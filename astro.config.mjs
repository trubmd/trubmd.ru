// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';

// https://astro.build/config
export default defineConfig({
	site: 'https://trubmd.ru',
	markdown: {
		remarkPlugins: [remarkMath],
		rehypePlugins: [rehypeKatex],
	},
	integrations: [
		starlight({
			title: 'trubmd.ru',
			locales: {
				root: { label: 'Русский', lang: 'ru' },
			},
			head: [
				{
					tag: 'link',
					attrs: { rel: 'stylesheet', href: '/katex/katex.min.css' },
				},
			],
			sidebar: [
				{ label: 'Алгебра', items: [{ autogenerate: { directory: 'algebra' } }] },
				{ label: 'Геометрия', items: [{ autogenerate: { directory: 'geometry' } }] },
				{ label: 'Статистика', items: [{ autogenerate: { directory: 'statistics' } }] },
				{ label: 'Высшая математика', items: [{ autogenerate: { directory: 'higher-math' } }] },
				{ label: 'Физика', items: [{ autogenerate: { directory: 'physics' } }] },
			],
		}),
	],
});
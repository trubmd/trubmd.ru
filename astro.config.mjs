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
			description: 'Сайт учителя математики Труб М.Д.',
			favicon: '/favicon.png',
			customCss: ['./src/styles/custom.css'],
			components: {
				Header: './src/components/Header.astro',
				Footer: './src/components/Footer.astro',
			},
			locales: {
				root: { label: 'Русский', lang: 'ru' },
			},
						head: [
				{
					tag: 'link',
					attrs: { rel: 'stylesheet', href: '/katex/katex.min.css' },
				},
				{
					tag: 'script',
					attrs: { type: 'application/ld+json' },
					content: JSON.stringify({
						'@context': 'https://schema.org',
						'@type': 'WebSite',
						name: 'trubmd.ru',
						url: 'https://trubmd.ru/',
						inLanguage: 'ru',
						description: 'Сайт учителя математики и физики Труб М.Д.',
						author: { '@type': 'Person', name: 'Труб М.Д.' },
					}),
				},
				// { tag: 'meta', attrs: { name: 'yandex-verification', content: 'ВАШ_КОД' } },
			],
			sidebar: [
				{ label: '🏠 На главную', link: '/' },
				{
					label: 'Элементарная математика',
					items: [
						{ label: 'Обзор', slug: 'elementary-math' },
						{ label: 'Алгебра', collapsed: true, items: [{ autogenerate: { directory: 'elementary-math/algebra' } }] },
						{ label: 'Геометрия', collapsed: true, items: [{ autogenerate: { directory: 'elementary-math/geometry' } }] },
						{ label: 'Вероятность и статистика', collapsed: true, items: [{ autogenerate: { directory: 'elementary-math/probability-statistics' } }] },
						{ label: 'Начала математического анализа', collapsed: true, items: [{ autogenerate: { directory: 'elementary-math/calculus-basics' } }] },
						{ label: 'Подготовка к ЕГЭ', collapsed: true, items: [{ autogenerate: { directory: 'elementary-math/ege' } }] },
					],
				},
				{
					label: 'Высшая математика',
					items: [
						{ label: 'Обзор', slug: 'higher-math' },
						{ label: 'Линейная алгебра', collapsed: true, items: [{ autogenerate: { directory: 'higher-math/linear-algebra' } }] },
						{ label: 'Математический анализ', collapsed: true, items: [{ autogenerate: { directory: 'higher-math/calculus' } }] },
						{ label: 'Комбинаторика', collapsed: true, items: [{ autogenerate: { directory: 'higher-math/combinatorics' } }] },
					],
				},
				{
					label: 'Физика',
					items: [
						{ label: 'Обзор', slug: 'physics' },
						{ label: 'Механика', collapsed: true, items: [{ autogenerate: { directory: 'physics/mechanics' } }] },
						{ label: 'Молекулярная физика и термодинамика', collapsed: true, items: [{ autogenerate: { directory: 'physics/molecular-thermodynamics' } }] },
						{ label: 'Электродинамика', collapsed: true, items: [{ autogenerate: { directory: 'physics/electrodynamics' } }] },
						{ label: 'Колебания и волны', collapsed: true, items: [{ autogenerate: { directory: 'physics/oscillations-waves' } }] },
						{ label: 'Оптика. Квантовая физика', collapsed: true, items: [{ autogenerate: { directory: 'physics/optics-quantum' } }] },
						{ label: 'Подготовка к ЕГЭ', collapsed: true, items: [{ autogenerate: { directory: 'physics/ege' } }] },
					],
				},
				{
					label: 'Common Lisp',
					items: [{ autogenerate: { directory: 'common-lisp' } }],
				},
			],
		}),
	],
});
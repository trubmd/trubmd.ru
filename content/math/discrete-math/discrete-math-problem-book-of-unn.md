---
title: Сборник задач по дискретной математике ННГУ
---
<div style="width: 100%; height: 1px; background-color: rgba(255, 255, 255, 0.15); margin-top:  0.5rem; margin-bottom: 0rem;"></div>

### 1. Множества

>**Замечание:** При решении задачи **1.16** полезны следующие утверждения:
>1. $A\subseteq B \iff A\overline{B}=\varnothing$
>2. $A=B \iff A \otimes B=\varnothing$

**1.16** С помощью диаграмм Венна выясните, равносильны ли следующие системы условий:
$$
1) \ \ \begin{cases}
X \subseteq Z \subseteq \overline{W} \\
Y \subseteq W \\
X \cup Y = Z \cup W
\end{cases} \ \
\text{и} \ \ \
\begin{cases}
X = Z \\
Y = W
\end{cases}
$$

<details>
<summary>Решение</summary>

Рассмотрим первую систему.
1) $X \subseteq Z \subseteq \overline{W} \implies X \subseteq Z,Z \subseteq \overline{W} \implies \boxed{X\overline{Z}= \varnothing},\boxed{ZW = \varnothing}.$
2)  $Y \subseteq W \implies \boxed{Y\overline{W}=\varnothing}.$
3) $X\cup Y=Z\cup W \implies (X\cup Y)\otimes(Z\cup W) =\varnothing \implies \big((X\cup Y)(\overline{Z\cup W})\big)\cup\big(((\overline{X\cup Y})(Z\cup W)\big)=\varnothing \\ \big((X\cup Y)\overline{Z} \overline{W}\big)\cup\big(\overline{X} \overline{Y}(Z\cup W)\big)=\varnothing \implies X \overline{Z} \overline{W} \cup Y \overline{Z} \overline{W} \cup  \overline{X} \overline{Y}Z \cup\overline{X} \overline{Y}W=\varnothing \implies \\ \boxed{X \overline{Z} \overline{W} =\varnothing}, \boxed{Y \overline{Z} \overline{W} =\varnothing}, \boxed{\overline{X} \overline{Y}Z =\varnothing}, \boxed{\overline{X} \overline{Y}W=\varnothing}.$

Отметим все полученные условия на диаграмме Венна:
![[dm-1-16-1-1.png|200]]

Рассмотрим вторую систему.
1) $X=Z \implies X \otimes Z=\varnothing \implies X\overline{Z} \cup \overline{X}Z=\varnothing \implies \boxed{X\overline{Z}=\varnothing}, \boxed{\overline{X}Z=\varnothing}.$
2) $Y=W \implies Y \otimes W=\varnothing \implies Y\overline{W} \cup \overline{Y}W=\varnothing \implies \boxed{Y\overline{W}=\varnothing}, \boxed{\overline{Y}W=\varnothing}.$

Отметим все полученные условия на диаграмме Венна:
![[dm-1-16-1-2.png|200]]

Видим, что таблицы этих систем не равны, следовательно, системы условий не равносильны.
</details>

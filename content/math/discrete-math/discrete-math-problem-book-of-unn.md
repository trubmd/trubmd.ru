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

> [!note]- Решение
> Рассмотрим первую систему.
> 
> 1) $X \subseteq Z \subseteq \overline{W} \implies X \subseteq Z,Z \subseteq \overline{W} \implies \boxed{X\overline{Z}= \varnothing},\boxed{ZW = \varnothing}.$
> 2) $Y \subseteq W \implies \boxed{Y\overline{W}=\varnothing}.$
> 3) $X\cup Y=Z\cup W \implies (X\cup Y)\otimes(Z\cup W) =\varnothing \implies \big((X\cup Y)(\overline{Z\cup W})\big)\cup\big(((\overline{X\cup Y})(Z\cup W)\big)=\varnothing$
> $\big((X\cup Y)\overline{Z} \overline{W}\big)\cup\big(\overline{X} \overline{Y}(Z\cup W)\big)=\varnothing \implies X \overline{Z} \overline{W} \cup Y \overline{Z} \overline{W} \cup  \overline{X} \overline{Y}Z \cup\overline{X} \overline{Y}W=\varnothing$
> $\boxed{X \overline{Z} \overline{W} =\varnothing}, \boxed{Y \overline{Z} \overline{W} =\varnothing}, \boxed{\overline{X} \overline{Y}Z =\varnothing}, \boxed{\overline{X} \overline{Y}W=\varnothing}.$
> 
> Отметим все полученные условия на диаграмме Венна:
> ![[dm-1-16-1-1.png|200]]
> 
> Рассмотрим вторую систему.
> 1. $X=Z \implies X \otimes Z=\varnothing \implies X\overline{Z} \cup \overline{X}Z=\varnothing \implies \boxed{X\overline{Z}=\varnothing}, \boxed{\overline{X}Z=\varnothing}.$
> 2) $Y=W \implies Y \otimes W=\varnothing \implies Y\overline{W} \cup \overline{Y}W=\varnothing \implies \boxed{Y\overline{W}=\varnothing}, \boxed{\overline{Y}W=\varnothing}.$
> 
> Отметим все полученные условия на диаграмме Венна:
> ![[dm-1-16-1-2.png|200]]
> 
> Видим, что таблицы этих систем не равны, следовательно, системы условий не равносильны.

$$
2) \ \ \begin{cases}
C \otimes D \subseteq A \\ 
B \cup D \subseteq A \cup C \\ 
A-D \subseteq C - B
\end{cases} \ \
\text{и} \ \ \
\begin{cases}
\overline{A} \subseteq CD \\
B - C \subseteq \overline{A} \\ \
A \subseteq C \cup D
\end{cases}
$$
> [!note]- Решение
> Рассмотрим первую систему.
> 
> 1. $C \otimes D \subseteq A \implies (C \otimes D)\overline{A}=\varnothing \implies (C\overline{D} \cup \overline{C}D)\overline{A}=\varnothing \implies C\overline{D}\overline{A} \cup \overline{C}D\overline{A}=\varnothing$
> $\implies \boxed{C\overline{D}\overline{A} = \varnothing}, \boxed{\overline{C}D\overline{A}=\varnothing}.$
> 
> 2. $B \cup D \subseteq A \cup C \implies (B \cup D)(\overline{A \cup C})=\varnothing \implies (B \cup D)(\overline{A}\overline{C})=\varnothing \implies B\overline{A}\overline{C} \cup D\overline{A}\overline{C}=\varnothing$
> $\implies \boxed{B\overline{A}\overline{C}=\varnothing}, \boxed{D\overline{A}\overline{C}=\varnothing}.$
> 
> 3. $A - D \subseteq C - B \implies (A - D)(\overline{C - B})=\varnothing \implies (A\overline{D})(\overline{C\overline{B}})=\varnothing \implies (A\overline{D})(\overline{C} \cup B)=\varnothing$
> $\implies A\overline{D}\overline{C} \cup A\overline{D}B = \varnothing \implies \boxed{A\overline{D}\overline{C}=\varnothing}, \boxed{A\overline{D}B = \varnothing}.$
> 
>  Отметим все полученные условия на диаграмме Венна:
> ![[images/dm-1-16-2-1.png|200]]
> 
> Рассмотрим вторую систему.
> 
> 1. $\overline{A} \subseteq CD \implies \overline{A}(\overline{CD})=\varnothing \implies \overline{A}(\overline{C} \cup \overline{D})=\varnothing \implies \overline{A}\overline{C} \cup \overline{A} \overline{D}=\varnothing \implies \\  \boxed{\overline{A}\overline{C}=\varnothing}, \boxed{\overline{A} \overline{D}=\varnothing}.$
> 2. $B - C \subseteq \overline{A}\implies(B-C)A=\varnothing\implies \boxed{B\overline{C}A=\varnothing}.$
> 3.  $A \subseteq C \cup D \implies A(\overline{C \cup D})=\varnothing \implies \boxed{A\overline{C}\overline{D}=\varnothing}.$
>    
>    Отметим все полученные условия на диаграмме Венна:
> ![[images/dm-1-16-2-2.png|200]]
> 
> Видим, что таблицы этих систем не равны, следовательно, системы условий не равносильны.

$$
3) \ \ \begin{cases}
A \subseteq C \otimes B \\
C \subseteq B \otimes D \\
AC \subseteq B-D
\end{cases} \ \
\text{и} \ \ \
\begin{cases}
B \subseteq \overline{CD} \\
C-D \subseteq B \\
AC \subseteq D \\
A-B \subseteq BC
\end{cases}
$$



> [!note]- Решение
> Рассмотрим первую систему.
> 
> 1) $A \subseteq C \otimes B \implies A(\overline{C \otimes B})=\varnothing \implies A(\overline{C\overline{B} \cup \overline{C}B})\implies A \big(\overline{C\overline{B}} \overline{\overline{C}B}\big)=\varnothing\implies A\big((\overline{C}\cup B)(C \cup \overline{B})\big) = \varnothing \implies \\ A(\overline{C}C \cup \overline{C}\overline{B} \cup BC \cup B\overline{B})=\varnothing \implies A(\overline{C}\overline{B}\cup BC)=\varnothing \implies A\overline{C}\overline{B} \cup ABC = \varnothing \implies \boxed{A\overline{C}\overline{B}=\varnothing},\boxed{ABC=\varnothing}.$
> 2) $C \subseteq B \otimes D \implies C(\overline{B \otimes D})=\varnothing \implies C(\overline{B\overline{D} \cup \overline{B}D})\implies C \big(\overline{B\overline{D}} \overline{\overline{B}D}\big)=\varnothing\implies C\big((\overline{B}\cup D)(B \cup \overline{D})\big) = \varnothing \implies \\ C(\overline{B}B \cup \overline{B}\overline{D} \cup DB \cup D\overline{D})=\varnothing \implies C(\overline{B}\overline{D}\cup BD)=\varnothing \implies C\overline{B}\overline{D} \cup CBD = \varnothing \implies \boxed{C\overline{B}\overline{D}=\varnothing},\boxed{CBD=\varnothing}.$
> 3) $AC \subseteq B-D \implies AC(\overline{B-D})=\varnothing \implies AC(\overline{B\overline{D}})=\varnothing \implies AC(\overline{B} \cup D)=\varnothing \implies \\ AC\overline{B} \cup ACD=\varnothing \implies  \boxed{AC\overline{B}=\varnothing},\boxed{ACD=\varnothing}.$
> 
> Отметим все полученные условия на диаграмме Венна:
> ![[dm-1-16-3.png|200]]
> 
> Рассмотрим вторую систему.
> 1. $B \subseteq \overline{CD} \implies \boxed{BCD=\varnothing}.$
> 2. $C-D \subseteq B\implies (C-D)\overline{B}=\varnothing \implies\boxed{C\overline{D}\overline{B}=\varnothing}.$
> 3.  $AC \subseteq D \implies \boxed{AC\overline{D}=\varnothing}.$
> 4. $A-B \subseteq BC\implies (A-B)\overline{BC}=\varnothing\implies(A\overline{B})(\overline{B}\cup\overline{C})=\varnothing\implies A\overline{B}\overline{B} \cup A \overline{B}\overline{C}=\varnothing \implies \\ \boxed{A\overline{B}=\varnothing},\boxed{A \overline{B}\overline{C}=\varnothing}.$
> 
> Отметим все полученные условия на диаграмме Венна:
> ![[dm-1-16-3.png|200]]
> 
> Видим, что таблицы этих систем равны, следовательно, системы условий равносильны.
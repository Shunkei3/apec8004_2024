---
title: "APEC8004: Recitation 3"
author: 
  - "Shunkei Kakimoto" 
header-includes:
   - \usepackage{mathtools}
   - \usepackage{color}
   - \usepackage{amsmath}
   - \usepackage{amssymb}
   - \usepackage{tikzcd}
   - \usepackage{stackrel}
output:
  xaringan::moon_reader:
    self_contained: true
    css: ../xaringan-themer.css 
    lib_dir: libs
    nature: 
      highlightStyle: github
      highlightLines: true
---
class: middle

```{r, child = '../setup.rmd', cache = FALSE}
```

```{r, cache=F, include=F}
knit_child("PrepareResults.rmd", quiet = TRUE)
```

```{r, include = F, cache = FALSE}
# here::i_am("GitControlled/Recitation/1_Introduction/recitation1_slides.rmd")
```

```{r xaringan-scribble, echo=FALSE}
xaringanExtra::use_scribble()
```

```{r, include = F, eval=F, cache = FALSE}
httpgd::hgd()
httpgd::hgd_browse()
```

```{r xaringan-tachyons, echo=FALSE}
xaringanExtra::use_tachyons()
```

.content-box-green[**A Useful tip:**]

hitting letter "o" key will give you a panel view of the slides


---
class: middle

# Outline

+ Review Assignment 1 and Assignment 2
+ Exercise problem 
---
class: middle

# Review: Assignment 1, Problem 2

Consider the following 

+ Consumer 1: $U_2(x_1, y_1)=x_1 y_1$, and $\omega_1 = (4,0)$

+ Consumer 2: $U_1(x_1, y_1)= 2 x_2 + y_2$, and $\omega_1 = (4,8)$

<span style="color:blue">(b) Find the demand functions for the two consumers.</span>

<span style="color:blue">(d) Find the Walrasian equilibrium for this economy.</span> 

<span style="color:blue">(e) Show that for this economy, using theses consumers' demands, Walras's law is satisfied.</span>

---
class: middle

## Consumer 1's demand

<br>

.pull-left[

\begin{align}
\max_{x_1, y_1} \quad & U_1(x_1, y_1)=x_1 y_1 \\
\textrm{s.t.} \quad & p_x x_1 + p_y x_1 = 4 p_x
\end{align}


.content-box-green[**NOTE:**]
U-max problem for a consumer with  Cobb–Douglas preferences is always interior solution if prices are strictly positive.

&rarr; A consumer with  Cobb–Douglas preferences prefers to consumer a mixture of goods. 
]


.pull-right[
```{r, echo=FALSE, out.width = "100%"}
animate(p1_annimate, fps = 20, duration = 5)
```
]

???
+ To find demand for each consumer, first we set up utility maximization problem for each consumer. 
+ This utility problem says that find 

---
class: middle

## Consumer 1's demand

<br>

.pull-left[
.content-box-green[**Problem for consumer 1**]

\begin{aligned}
\max_{x_1, y_1} \quad & U_1(x_1, y_1)=x_1 y_1 \\
\textrm{s.t.} \quad & p_x x_1 + p_y x_1 = 4 p_x
\end{aligned}

F.O.C.

$$\begin{align}
\text{MRS} &= \text{ slope of IC} \\
\frac{y}{x} &= \frac{p_x}{p_y} \\
y_1 &= \frac{p_x}{p_y} x_1\\
\end{align}$$

By substituting this into the budget constraint, and solving for $x_1$ and $y_1$, you'll get

\begin{equation}
x_1^{\ast} = 2, \, y_1^{\ast} = \frac{2p_x}{p_y}
\end{equation}

]


.pull-right[
```{r, echo=FALSE, out.width = "100%"}
plot_opt_p1
```
]

???
+ The marginal rate of substitution is always negative because it is measuring the rate at which someone is willing to give up some amount of one good in exchange for gaining some amount of another good.

+ Cobb-Douglas or quasi-linear utility functions have a interior solution. 
  + Quasi-linear utility functions have interior if prices are strictly positive

---
class: middle

## Consumer 2's demand

.content-box-green[**Problem for consumer 2**]

\begin{aligned}
\max_{x_2, y_2} \quad & U_2(x_2, y_2)=2x_2+y_2 \\
\textrm{s.t.} \quad & p_x x_2 + p_y x_2 = 4 p_x + 8 p_y
\end{aligned}


Linear utility functions represent <span style="color:blue">perfect substitute</span> preferences. 

&rarr; the consumer is willing to substitute one good for the other at <span style="color:blue">a constant rate</span>

&rarr; Depending on the slope of the indifference curve (i.e., price ratio), utility maximizing bundle can be corner solutions. 

???
+ MRS (slope of the indifference curve) is -2. This means that, consumer 2 is always willing to give up 2 units of good y in exchange for additional unit of good x to remain indifferent. 

---
class: middle

.content-box-green[**Problem for consumer 2**]

\begin{aligned}
\max_{x_2, y_2} \quad & U_2(x_2, y_2)=2x_2+y_2 \\
\textrm{s.t.} \quad & p_x x_2 + p_y x_2 = 4 p_x + 8 p_y
\end{aligned}

.pull-left[
**Case I**: If $-\frac{p_x}{p_y} = -2$, or $\frac{p_x}{p_y} = 2$.

Now, the budget constraint is 
\begin{align*}
x_2 + p_y x_2 = 4 p_x + 8 p_y\\
\frac{p_x}{p_y} x_2 + x_2 = 4 \frac{p_x}{p_y} + 8 \\
2 x_2 + y_2 = 16 \\
\end{align*}

$U_2$ is maximized when his IC coincides with his budget constraint. 

Thus, U-max bundles are 

$$(x_2^{\ast}, y_2^{\ast}) = \{(x_2, y,2); 2 x_2 + y_2 = 16, 0 \leq x_2 \leq 8\}$$

]

.pull-right[
```{r, echo=FALSE, out.width = "100%"}
 # knitr::include_graphics("animation/p2_annimate_case1.gif")
animate(p2_annimate_case1, fps = 20, duration = 5, end_pause = 5)
```
]

---
class: middle

.content-box-green[**Problem for consumer 2**]

\begin{aligned}
\max_{x_2, y_2} \quad & U_2(x_2, y_2)=2x_2+y_2 \\
\textrm{s.t.} \quad & p_x x_2 + p_y x_2 = 4 p_x + 8 p_y
\end{aligned}

.pull-left[
**Case II**: If $-\frac{p_x}{p_y} < -2$, or $\frac{p_x}{p_y} > 2$

The utility maximizing bundle is the y-intercept of the budget line. 

$$(x_2^{\ast}, y_2^{\ast})=(0, 4 \frac{p_x}{p_y} + 8)$$

]

.pull-right[
```{r, echo=FALSE, out.width = "100%"}
animate(p2_annimate_case2, fps = 20, duration = 5, end_pause = 5)
```
]

---
class: middle

.content-box-green[**Problem for consumer 2**]

\begin{aligned}
\max_{x_2, y_2} \quad & U_2(x_2, y_2)=2x_2+y_2 \\
\textrm{s.t.} \quad & p_x x_2 + p_y x_2 = 4 p_x + 8 p_y
\end{aligned}

.pull-left[
**Case III**: If $-\frac{p_x}{p_y} > -2$, or $\frac{p_x}{p_y} < 2$

The utility maximizing bundle is the x-intercept of the budget line. 

$$(x_2^{\ast}, y_2^{\ast})=(4 + 8 \frac{p_y}{p_x}, 0)$$

]

.pull-right[
```{r, echo=FALSE, out.width = "100%"}
animate(p2_annimate_case3, duration = 5, end_pause = 3)
```
]

---
class: middle

**Walrasian equilibrium**

\begin{align*}
(x_1^{\ast}, y_1^{\ast}) = (2, 2 \frac{p_x}{p_y})
\end{align*}

\begin{align*}
(x_2^{\ast}, y_2^{\ast}) &= 
    \begin{cases}
      (4 + 8 \frac{p_y}{p_x}, 0) & \text{ if } \frac{p_x}{p_y} < 2 \\
     \{(x_2, y_2); 2 x_2 + y_2 = 16, 0 \leq x_2 \leq 8\} & \text{ if } \frac{p_x}{p_y} = 2 \\
      (0, 4 \frac{p_x}{p_y} + 8) & \text{ if } \frac{p_x}{p_y} > 2
    \end{cases}      
\end{align*}


```{r, echo=FALSE, out.width = "40%"}
oc_curve
```

---
class: middle

.bg-washed-green.b--dark-green.ba.bw2.br3.shadow-2.ph2.mt2[
**Walras's law (strong form)**

If all the preferences satisfy local nonsatiation, <span style="color:blue">for any price vector $p$</span>, it must be that $p \cdot z(p)=0$
]

.content-box-red[**NOTE:**]
+ If you are asked to show whether Walras’s law is satisfied, you need to show $p \cdot z(p)=0$ for <span style="color:blue">all price vector $p$</span>. 

<!-- So, show:
\begin{align*}
\begin{bmatrix}
p_x & p_y
\end{bmatrix}
\begin{bmatrix}
x_1^{\ast}(p_x, p_y) - x_2^{\ast}(p_x, p_y) - \omega_{1x} - \omega_{2x} \\
y_1^{\ast}(p_x, p_y) - y_2^{\ast}(p_x, p_y) - \omega_{1y} - \omega_{2y}\\
\end{bmatrix} = 0
\end{align*} -->


$$\begin{bmatrix}p_x \\ p_y\end{bmatrix} x_1^{\ast}(p_x, p_y) + x_2^{\ast}(p_x, p_y) - \omega_{1x} - \omega_{2x} &
y_1^{\ast}(p_x, p_y) + y_2^{\ast}(p_x, p_y) - \omega_{1y} - \omega_{2y}\end{bmatrix} = 0$$



\begin{align*}
p \cdot z(p)
&= \begin{bmatrix} p_x \\ p_y \end{bmatrix} \begin{bmatrix} z_x & z_y end{bmatrix} \\
&= \begin{bmatrix} p_x \\ p_y \end{bmatrix} \begin{bmatrix} z_x & z_y end{bmatrix} \\
&= 0
\end{align*}

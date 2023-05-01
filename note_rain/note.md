# Ch5 note

## [DG Design](http://media.ee.ntu.edu.tw/courses/dspdesign/16F/slide/7_systolic_architecture_design.pdf)
- Write the recursive form of an algorithm
- Transform it into a Single Assignment Code
- Draw DG
- Localized DG

## p5-1~p5-12 note：Linear Scheduling

1. 同個hyperplane為相同執行順序
2. 同個projection為同樣一顆processor
3. normal vector ($\vec{s}$) 垂直於hyperplane，length由DG維度決定
4. components of the scheduling vector $\vec{s}$ must be co-prime(互質)
5. schedule of node i = inner product of $\vec{s}$ & i
6. nodes on the same hyperplane should not be assigned to the same processor to preserve computing parallelism
- Observe partial ordering(precedence relation) <br>
$\vec{s^t} \cdot \vec{e} \geq 0$ for all $\vec{e}$ (單位向量)
- Preserve parallelism <br>
$\vec{s^t} \cdot \vec{d} \neq 0$ for projection vector $\vec{d}$
7. Type of schedules <br>
- default schedule => $\vec{s} = \vec{d}$ Resursion schedule => $\vec{s}$ is parallel to one of axis in the index space of the DG, usually the recursion direction
- Systolic schedule => at least one delay on each edge of SFG
8. example 在講義5-9~5-11
- pipeline period $\alpha = \vec{s^t} \cdot \vec{d}$ (number of clock cycles between two successive computations)

## P5-13~

1. spatial mapping
- $\vec{P}$ is the processor basis or processor allocation matrix, and their dim is (N-1) * N(N is DG dimension)
- $P\cdot \vec{d} = 0$ , where $\vec{d}$ is projection vector
- process index $\vec{n} = P \cdot \vec{i}$

2. Timing mapping
- time index t = $\vec{s^t} \cdot \vec{i}$, $\vec{s^t}$ is the scheduling vector

3. Transfer matrix is 

$$
T=
\begin{bmatrix}
{\vec{s^t}} \\
P 
\end{bmatrix}
$$

4. Mapping procedures
- Node mapping

$$
        \begin{bmatrix}
        \vec{t(\vec{i})} \\
        \vec{n}
        \end{bmatrix}
        =
        \begin{bmatrix}
        \vec{s^t} \\
        P
        \end{bmatrix}
        \cdot
        \begin{bmatrix}
        \vec{i} 
        \end{bmatrix}
$$

$\vec{i}$ is DG node, $t(\vec{i})$ is schedule, $\vec{n}$ is Processor index

- Arc mapping

$$
        \begin{bmatrix}
        \vec{D(\vec{e})} \\
        \vec{e}
        \end{bmatrix}
        =
        \begin{bmatrix}
        \vec{s^t} \\
        P
        \end{bmatrix}
        \cdot
        \begin{bmatrix}
        \vec{a} 
        \end{bmatrix}
$$

$\vec{a}$ is DG arc, $D(\vec{e})$ is edge delay, $\vec{e}$ is SFG edge

- IO mapping

$$
        \begin{bmatrix}
        \vec{t(\vec{c})} \\
        \vec{n}
        \end{bmatrix}
        =
        \begin{bmatrix}
        \vec{s^t} \\
        P
        \end{bmatrix}
        \cdot
        \begin{bmatrix}
        \vec{c} 
        \end{bmatrix}
$$

$\vec{c}$ is I/O node, $t(\vec{c})$ is schedule, $\vec{n}$ is Processor index

5. DG of insertion sort example

<p align="middle">
  <img src="img/insertion_sort_eg.jpg" width="500" />
</p>

6. Processor utilization ratio = $ \frac{1}{\alpha} $

7. systolic array

- a homogeneous network of tightly coupled data processing units(DPUs) called cells or nodes

- Each node or DPU independently computes a partial result as a function of the data received from its upstream neighbors, stores the result of the data within itself and passes it downstream

- Modularity and regularity

- Contains only local interconnection

## Ref

[1] [如何在 Markdown 輸入數學公式及符號
](https://blog.maxkit.com.tw/2020/02/markdown.html)

[2] [Markdown 文本居中、字体颜色以及数学公式
](https://blog.csdn.net/silver1225/article/details/89036250)

[3] [VLSI Signal processing](http://twins.ee.nctu.edu.tw/courses/vsp_04/handout/Lecture%205.pdf)

[4] [Digital Signal Processing VLSI Systems
](http://media.ee.ntu.edu.tw/courses/dspdesign/16F/slide/7_systolic_architecture_design.pdf)
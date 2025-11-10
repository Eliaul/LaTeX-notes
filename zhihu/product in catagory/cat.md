
令 $\mathsf C$ 是范畴，$\{X_i\}_{i\in I}$ 是 $\mathsf C$
中的一族对象。如果对象 $P\in \mathrm{Ob}(\mathsf C)$ 和一族态射 $\{p_i:P\to X_i\}_{i\in I}$ 
满足下面的范性质：给定任意 $Z\in\mathrm{Ob}(\mathsf C)$ 和一族态射
$\{f_i:Z\to X_i\}_{i\in I}$，都存在唯一的态射 $\Phi:Z\to P$
使得对于每个 $i\in I$ 都有 $f_i=p_i\circ\Phi$，那么我们说 $\bigl(P,\{p_i:P\to X_i\}_{i\in I}\bigr)$ 是 $\{X_i\}_{i\in I}$ 的积。通常我们记作
$\prod_{i\in I} X_i$，态射 $p_i:\prod_{i\in I}X_i\to X_i$
被称为自然投影。

令 $\mathsf C$ 是范畴，$\{X_i\}_{i\in I}$ 是 $\mathsf C$
中的一族对象。如果对象 $C\in \mathrm{Ob}(\mathsf C)$ 和一族态射 $\{\iota_i:X_i\to C\}_{i\in I}$ 
满足下面的范性质：给定任意 $Z\in\mathrm{Ob}(\mathsf C)$ 和一族态射
$\{f_i:X_i\to Z\}_{i\in I}$，都存在唯一的态射 $\Phi:C\to Z$
使得对于每个 $i\in I$ 都有 $f_i=\Phi\circ\iota_i$，
那么我们说 $\bigl(C,\{\iota_i:X_i\to C\}_{i\in I}\bigr)$ 是 $\{X_i\}_{i\in I}$ 的余积。


令 $\{X_i\}_{i\in I}$ 是 $\mathsf{Set}$ 中的一族对象。
那么 $\mathsf{Set}$ 中的余积是集合的无交并：
$$
  \coprod_{i\in I}X_i=\bigcup_{i\in I} \bigl(
    X_i\times \{i\}
  \bigr),
$$
附带自然的嵌入映射。

令 $\{X_i\}_{i\in I}$ 是 $\mathsf{Set}$ 中的一族对象。
那么 $\mathsf{Set}$ 中的积就是集合的直积：
$$
  \prod_{i\in I}X_i=\left\{
    f:I\to\bigcup_{i\in I} X_i\,\middle|\,
    \forall i\in I,f(i)\in X_i.
  \right\},
$$
附带显然的投影映射 $p_i:f\mapsto f(i)$。

令 $\{X_i\}_{i\in I}$ 是 $\mathsf{Set}$ 中的一族对象。
那么 $\mathsf{Set}$ 中的余积是集合的无交并：
$$
  \coprod_{i\in I}X_i=\bigcup_{i\in I} \bigl(
    X_i\times \{i\}
  \bigr),
$$ 
附带自然的嵌入映射。




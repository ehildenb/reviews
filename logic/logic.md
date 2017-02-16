An Axiomatic Basis for Computer Programming - Hoare - 1969
==========================================================

Abstract
--------

In this paper an attempt is made to explore the logical foundations of computer
programming by use of techniques which were first applied in the study of
geometry and have later been extended to other branches of mathematics. This
involves the elucidation of sets of axioms and rules of inference which can be
used in proofs of the properties of computer programs. Examples are given of
such axioms and rules, and a formal proof of a simple theorem is displayed.
Finally, it is argued that important advantages, both theoretical and practical,
may follow from a pursuance of these topics.

Summary
-------

\newcommand{\proves}{\vdash}
\newcommand{\lif}{\rightarrow}

Hoare presents a logic schema for axiomatizing computer programming languages
with the goal of proving their correctness. *Hoare tripples* of the form
$P \{Q\} R$ are presented as this formalism, where $P$ corresponds to a
pre-condition, $Q$ corresponds to the program to execute, and $R$ corresponds to
the post-condition. The informal semantics are "if $P$ holds before execution,
and $Q$ terminates, then $R$ will hold after execution".

In addition to providing this basic foundation, some simple proof rules are
supplied. Some are generic to Hoare logic: the rule of consequence (if
$\proves P \{Q\} R$ and $\proves R \lif S$ and $\proves T \lif P$ then
$\proves T \{Q\} S$), and the transitivity rule or rule of composition (if
$\proves P \{Q_1\} P'$ and $\proves P' \{Q_2\} R$ then
$\proves P \{Q_1 ; Q_2\} R$). Others are specific to a particular programming
language, and should be taken as "rule schemas", where instantiating it to the
language of choice yields actual proof rules. For example, a simple language
with assignment is assumed, and an example rule for it is given:
$\proves P[f/x] \{x := f\} P$.

Because proofs using this formalism can be quite long and tedious, Hoare also
talks about proof automation and composition. Hoare admits that users would not
be willing to write these long and tedious proofs, and that proving programs
correct will not become mainstream until more powerful techniques for doing the
proofs have been developed. Nevertheless, Hoare presses the importance of
providing frameworks for proving programs correct in safety-critical
applications.

Finally, there is discussion about the merits of this approach to designing
programming languages. For one, it provides a guide for language designers to
simplify their language; complicated or non-composable language constructs will
not have easy-to-express proof rules about them, hinting towards bad language
design. Additionally, it provides an implementation independent way to specify
how a language should behave, whereas simply providing a compiler or interpreter
would be tied to the platform those tools are developed on.

---
references:
- id: hoare-axiomatic-programming
  author:
  - family: Hoare
    given: C. A. R.
  issued:
  - year: '1969'
  title: An axiomatic basis for computer programming
  container-title: 'Communications of the ACM'
  volume: 12
  number: 10
...

Lambda Calculus: Models and Thoeries - Salibra - 2011
=====================================================

Abstract
--------

In this paper we give an outline of recent results concerning theories and
models of the untyped lambda calculus. Algebraic and topological methods have
been applied to study the structure of the lattice of $\lambda$-theories, the
equational incompleteness of lambda calculus semantics, and the
$\lambda$-theories induced by graph models of lambda calculus.

Summary
-------

Models of lambda calculus are very unnatural, as the domain of the carrier set
must have as many elements as it does functions over those elements. Due to
this, it was many years after the introduction of lambda calculus before any
models of lambda calculus arose. Further, no "canonical" models of lambda
calculus exist. This paper surveys different models of the untyped lambda
calculus, and addresses the (in)completeness of lambdas calculus.

The paper first gives basic definitions and notations for lambda calculus, with
the usual $\alpha$ and $\beta$ rules. They also define particular lambda terms,
such as the $SKI$ combinators, as well as $\mathbf{1} \equiv \lambda xy.xy$. The
extensional lambda-theory (equivalent to the $\eta$ axiom), is axiomatized by $I
\equiv \mathbf{1}$.

The notion of a combinatory algebra is defined, where a combinatory algebra has
a carrier set $C$ and a binary operation $\cdot$, as well as constant symbols
$K$ and $S$. It must satisfy the identities $Kxy = x$ and $Sxyz =
xz(yz)$. Combinators $I$ and $\mathbf{1}$ are derived as $I = SKK$ and
$\mathbf{1} = S(KI)$. The notion of representability is also defined, stating
that a function $f$ is representable if there is a $c$ such that $cz = f(z)$ for
all $z \in C$.

Lambda models are then discussed. The most "natural" models of untyped lambda
calculus, called *environment models* are higher-order structures. However, a
class of combinatory algebras called $\lambda-models$ have an elegant (though
not equational) axiomatization. The paper then covers the precise definition of
$\lambda$-models, which satisfy reasonable equations. The most important axiom,
known as the *Meyer-Scott axiom* is the only non-equational axiom for
$\lambda$-models, and it is:

> $\forall x\forall y(\forall z(xz=yz)\Rightarrow \mathbf{1} x= \mathbf{1}y)$

This axiom makes the combinator $\mathbf{1}$ an inner choice operator, yielding
a canonical representative for each lambda-abstraction. The author then
discusses how a $\lambda$-model induces a $\lambda$-theory.

Incompleteness results are then discussed. In general, $\lambda$-theories are
incomplete, and the author discusses conditions where two $\lambda$ terms can be
proved equal in a $\lambda$-theory, though they are not equal in the theory
induced by the combinatory algebra. Incompleteness is also considered from a
topological viewpoint.

Finally, graph models and theories induced by graph models are discussed, and
these models are also known to be incomplete. The author concludes with a
discussion about the set of all $\lambda$-theories, which naturally forms a
complete lattice.

---
references:
- id: DBLP:journals/corr/abs-0904-4756
  type: article-journal
  author:
  - family: Manzonetto
    given: Giulio
  issued:
  - year: '2009'
  title: Models and theories of lambda calculus
  container-title: CoRR
  volume: abs/0904.4756
  URL: http://arxiv.org/abs/0904.4756
...

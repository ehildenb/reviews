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

Polymorphism, Subtyping, and Type Inference in MLsub - Dolon Mycroft - 2017
===========================================================================

Abstract
--------

We present a type system combining subtyping and ML-style parametric
polymorphism. Unlike previous work, our system supports type inference and has
compact principal types. We demonstrate this system in the minimal language
MLsub, which types a strict superset of core ML programs.

This is made possible by keeping a strict separation between the types used to
describe inputs and those used to describe outputs, and extending the classical
unification algorithm to handle subtyping constraints between these input and
output types. Principal types are kept compact by type simplification, which
exploits deep connections between subtyping and the algebra of regular
languages. An implementation is available online.

Summary
-------

The authors present a type system called MLsub, which supports ML-like typing
along with arbitrary recursive types and subtyping. Their language includes
base-type `Bool`, along with `let ... in ...` bindings. Additionally, type
inference is supported, and has *compact principal types* (canonical type for an
expression where other types of it are instances).

To avoid undecidability, the idea of *polar types* are used, which keep track of
whether a type occurs in the position of a "consumer"/negative occurance $t^-$
(eg. the domain of a function type) or a "producer"/positive occurance $t^+$
(eg. the range of a function type). In addition, the meet $\sqcap$ and join
$\sqcup$ operators of the type lattice are restricted in where they can appear;
joins (type union) can only appear in positive posititions and meets (type
intersection) can only appear in negative positions. Many type-inference
algorithms work by collecting *type constraints* as they unify types (then
solving the constraints afterwards); by introducing polar types and the
corresponding restrictions, type constraints become much simpler (only of the
form $t^+ \leq t^-$), so that the only checks that need to happen are of the
form $t_1 \sqcup t_2 \leq t$ and $t \leq t_1 \sqcap t_2$ (non-convex checks).
Then the type constraints can be systematically translated into syntactic types
(eg. $a \to a | a \leq t$ turns into $a \sqcap t \to t$; and
$a \to a | t \leq a$ turns into $a \to a \sqcup t$).

Standard unification does not work for type inference anymore, because it
doesn't take into account the difference between positive and negative
occurances of a type. Instead, a *biunification* algorithm is presented, which
produces two substitutions for each type variable (one for positive occurances
and one for negative) called a *bisubstitution* (eg. $[t^+/a^+, t'^-/a^-]$). A
bisubstitution returned by the algorithm must be *stable*, which means (i) the
negative substitution for each type variable must be a subtype of the positive
substitution (eg. for $[t^+/a^+, t'^-/a^-]$ we must have $t^- \leq t^+$) and
(ii) it must be idempotent. A bisubstitution is said to *solve* a set of
type-constraints if the set of all *instances* of the type-constraints is equal
to the set of all instances of the solved type (where $inst(t)$ is defined as
$\{t' | t \textrm{ can be used as type } t'\}$). If the biunification algorithm
presented returns a solution to the set of constraints $t^+ \leq t^-$, then that
solution is stable and is a correct solution.

Finally, a presentation to *type automata* is given, where two types are
equivalent iff their corresponding automata accept the same languages. The
type-automata are then converted to NFAs, which can be reduced with any NFA
reduction techniques, and then converted back into syntactic types. This
provides an effecient way both to infer types and to reduce them (as pointed out
by the paper, type-systems with subtypes often yield large/unwieldly types).
They claim that their algorithm is efficient enough to retype an entire program
on each key-stroke in their online interface.

References
----------

-   Algebraic Subtyping (Thesis)
    Dolan - 2016
-   Type Inference in the Presence of Overloading, Subtyping, and Recursive Types
    Kaes - 1992
-   Non-structural Subtype Entailment in Automata Theory
    Niehren Priesnitz - 2001

---
- id: dolon-mycroft-polymorphism-subtyping-mlsub
  type: paper-conference
  author:
  - family: Dolan
    given: Stephen
  - family: Mycroft
    given: Alan
  issued:
  - year: 2017
  title: Polymorphism, subtyping, and type inference in mLsub
  container-title: Proceedings of the 44th ACM SIGPLAN symposium on principles of programming languages, POPL 2017, paris, france, january 18-20, 2017
  page: 60-72
---

A Theory of Type Polymorphism in Programming - Milner - 1978
============================================================

Abstract
--------

The aim of this work is largely a practical one. A widely employed style of
programming, particularly in structure-processing languages which impose no
discipline of types, entails defining procedures which work well on objects of a
wide variety. We present a formal type discipline for such polymorphic
procedures in the context of a simple programming language, and a compile time
type-checking algorithm $\mathcal W$ which enforces the discipline. A Semantic
Soundness Theorem (based on a formal semantics for the language) states that
well-type programs cannot "go wrong" and a Syntactic Soundness Theorem states
that if $\mathcal W$ accepts a program then it is well typed. We also discuss
extending these results to richer languages; a type-checking algorithm based on
$\mathcal W$ is in fact already implemented and working, for the metalanguage ML
in the Edinburgh LCF system,

Summary
-------

Previously, to define a procedure that works on different objects, one works in
an untyped language such as LISP. This allows the programmer flexibility he or
she desires, but at the price of potentially nasty runtime errors.
Alternatively, avoiding such runtime errors, one could use a typed language like
ALGOL, but one cannot define a generic "map" function, for example, when using
such a language.

The solution comes in the form of *polymorphism*. This idea unifies the two
above, allowing the programmer to define generic functions while still
maintaining useful compile-time errors instead of more obscure runtime errors.
This polymorphism comes at no additional cost to the programmer, as most of the
time the types are inferred. In general, expressions are assigned a polymorphic
type (such as $\alpha \rightarrow \alpha$) unless it can be determined from
context that an expression has a unique monomorphic type (such as
$Bool \rightarrow Bool$). These ideas have all incorporated in the LCF
metalanguage ML, demonstrating the usefulness in practice as well as in theory.
The main limitation of this system is that it lacks the ability to define
function whose parameters may have different types for different calls of the
function. Dependent types are an answer to this issue, though of course that was
not known at the time.

Milner uses a simple functional programming language Exp to illustrate these
ideas. Exp has if statements, application, lambda-abstractions, let-bindings,
and a fix operator, with semantics defined as expected. The syntactic value
"wrong" was also inserted, corresponding to a failure at run-time, specifically
with a non-Boolean value as the condition in an if-statement, or a nonfunctional
value as the operator of an application.

Types and their semantics for Exp are also given. Many values have multiple
types, and many values, such as wrong, have no type. Type assignments are given
by a notion of a prefix (like a typing context or typing environment).
Expressions are then typed using the construct "$p \mid e$" known as prefixed
expressions, where each free variable in $e$ occurs in $p$. Each prefixed
expression has sub-pe's. For example, $p \mid (e e')$ has as sub-pe's $p \mid e$
and $p \mid e'$. Typings are given on prefixed expressions (denoted
$\Vec{p} \mid \Vec{e}$), and the notion of well-typed prefixed expressions are
given inductively. For example, an application is well typed with with type
$\tau$, if both sub-expressions are well-typed, and the first has type
$\sigma \rightarrow \tau$ and the second has type $\sigma$.

After a substitution lemma is proved, stating that any substitution of a
well-typed expression remains well-typed, one key theorem is proved which, in
short, states that if an expression is well-typed (as type $\tau$), then in an
environment, it is interpreted as an expression of type $\tau$. And, an easy
corollary of this theorem states that there is no well-typed expression whose
interpretation is equal to the syntactic value wrong.

Finally, an algorithm $\mathcal W$ is presented for finding a well typing for a
prefixed expression. This algorithm uses a variation of the unification
algorithm presented in Robinson's resolution paper. $\mathcal W$ is defined
inductively, and rather intuitively, using results on sub-expressions to type
larger expressions. $\mathcal W$ is proved sound, and though the author states
$\mathcal W$ is "probably complete", no completeness proof is given
(completeness proofs for $\mathcal W$ and similar algorithms appear later).

A more efficient algorithm $\mathcal J$ is also presented, which simulates
$\mathcal W$. The main idea behind $\mathcal J$ is that it builds only one
substitution, as opposed to $\mathcal W$ which builds potentially many. To
accomplish this, $\mathcal J$ calls a modified unification procedure, which
transforms a substitution rather than returning a new substitution. Milner
proves that $\mathcal J$ succeeds iff $\mathcal W$ succeeds.

Finally, the paper concludes with some natural extensions to Exp that were
included in ML. Constructs such as the Cartesian product $\times$, disjoint sum
$\oplus$, and list forming causes no problems with the key theorems proved.
Variable assignment, on the other hand, introduces potential side effects. For
this, Milner believes a Semantic Soundness Theorem may be proved, but it would
need to be altered to account for such side effects. The last feature is the
declaration of a new type operator in terms of old ones. Again, well-typing
rules remain easy, but soundness was not checked, though the author believes it
should not be any difficulty.

---
- id: milner-theory-type-polymorphism
  type: article-journal
  author:
  - family: Milner
    given: Robin
  issued:
  - year: '1978'
  title: A theory of type polymorphism in programming
  container-title: Journal of Computer and System Sciences
  page: 348 - 375
  volume: '17'
  issue: '3'
  URL: //www.sciencedirect.com/science/article/pii/0022000078900144
  DOI: http://dx.doi.org/10.1016/0022-0000(78)90014-4
  ISSN: '0022-0000'
...

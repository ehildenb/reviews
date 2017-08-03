\newcommand{\proves}{\vdash}
\newcommand{\lif}{\rightarrow}
\newcommand{\always}{\square}
\newcommand{\eventually}{\diamond}
\newcommand{\T}{\mathcal{T}}
\newcommand{\M}{\mathcal{M}}
\newcommand{\E}{\mathcal{E}}

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
- id: manzonetto-models-theories-lambda-calculus
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

Automated Deduction for Verification - Shankar - 2009
=====================================================

Abstract
--------

Automated deduction uses computation to perform symbolic logical reasoning. It
has been a core technology for program verification from the very beginning.
Satisfiability solvers for propositional and first-order logic significantly
automate the task of deductive program verification. We introduce some of the
basic deduction techniques used in software and hardware verification and
outline the theoretical and engineering issues in building deductive
verification tools. Beyond verification, deduction techniques can also be used
to support a variety of applications including planning, program optimization,
and program synthesis.

Summary
-------

### Introduction

Verification is a critical component of many parts of formal methods. Deductive
techniques, both automated and interactive, have long been associated with
verification. The basic query in deduction is whether a statement is *valid*
(equivalently the negation is not *satisfiable*); a proof system is *sound* if
every proof results in a valid statement, and is *complete* if every valid
statement has a proof using the system. Automated deduction can be used in many
verification tasks, several of them listed at the end of the introduction.

### Mathematical Logic

>   A strong facility with logic is an essential skill for a computer scientist.

In this section, several logics are briefly intoduced. The included logics are
*propositional logic*, *equational logic*, *first-order logic*, and
*higher-order logic*. Logics have several parts, including a language (syntax),
semantics (intended meaning of syntax), and a proof system (framework for
deriving valid statements).

Propositional Logic:
:   Propositional logic has atomic *propositions* and variables, joined with a
    boolean algebra. Models of the logic consist of assignments of truth values
    to each atomic proposition. Two major interpretations of the symbols in the
    boolean algebra are *classical* and *intuitionistic* (constructive). Many
    proof systems exist for propositional logic, each which emphasizes different
    ways of thinking about proofs and structuring them; the main ones are
    *Hilbert-style* proof systems (use *modus ponens* as the work-horse),
    *natural-deduction* (with *introduction* and *elimination* proof rules), and
    *sequent calculus* (move sets of propositions across the $\proves$).

    *Modal logic* allows for expressing modes which are indexed by truth
    assignments (called *worlds*). A Kripke model consists of a set of worlds
    with an accessibility relation between worlds, and modality operators
    $\always$ and $\eventually$ which allows expressing the reachability of
    other worlds from the current world. Modal logics have been very succesful
    for expressing *temporal* logics like LTL, CTL, and CTL*.

    Numerous applications of propositional logic are presented, including
    modelling circuitry, planning, and bounded model checking. States and
    transitions between states can both be encoded as propositional formulas,
    giving rise to the notions of *invariant* states and *inductive*
    properties of transition relations. *Symbolic model checking* is achieved by
    allowing for variables in the state formulas.

Equational Logic:
:   Equational logic is an extension of propositional logic (and a fragment
    of FOL) which is restricted to judgements of equalities $E \proves a = b$,
    with $E$ a set of equalitions (formulas are implicitely
    universally quantified). Many algebraic models (eg. semigroups,
    monoids, groups, rings, boolean algebras) admit equational theories.
    Sound and complete proof systems for equational logic exist; many equational
    theories can even be expressed as directed term-rewriting systems too,
    giving an executable semantics to them.

First-Order Logic (FOL):
:   First-order logic allows for propositions to range over *terms* from some
    signature $\Sigma$ which represent functions over the domains of the models
    of FOL. User-defined *relations* over the terms represent subsets of
    the model. Equality in first-order logic is special; it can be treated as a
    relation with axioms or as a logical symbol. In addition to a boolean
    algebra, existential ($\exists$, corresponds to satisfiability) and
    universal ($\forall$, corresponds to validity) quantification over variables
    is allowed. Propositional logic can be seen as a fragment of FOL where the
    atomic predicates range over terms and there are no equations
    or quantification.

    Sound and comlete proof systems for FOL exist; to extend the proof from that
    of propositional logic to FOL, one adds witnesses (fresh constants) for each
    existential sentence in the signature (along with a witness axiom). This
    process extends the signature $\Sigma$ and axioms $\Gamma$ to a $\hat\Sigma$
    and $\hat\Gamma$ from which one can simply read off the correct model.

    Sentences in FOL can be converted syntactically into *prenex normal form*,
    which moves all the quantifiers to the front of the sentences. Additionally,
    one can eliminate existential quantifiers by introducing *Skolem functions*
    in their place, yielding formulas with only universal quantification. Using
    the Herbrand theorem, one can more easily demonstrate unsatisfiability of
    such formulas. Other interesting results about FOL include the *compactnes*
    theorem, the Lowenheim-Skolem theorem, the *almalgamation* theorem, and
    the encodability of the halting-problem.

    A *first-order theory* is a set of first-order sentences $\Gamma$ closed
    under logical *entailment*. A theory is *finitely axiomatizable* there is a
    finite $\Gamma_0 \subseteq \Gamma$ such that $\Gamma_0 \models \Gamma$. A
    theory is *recursively axiomatizable* if there is a program that can
    distinguish axioms from non-axioms among the sentences. A theory is
    *decidable* if there is a program which can distinguish sentences within the
    theory from those without.

    Several interesting first-order theories are presented next (page 20:15),
    including theories of interesting models, theories of arithmetic, various
    algebraic theories, and some theories of data-structures. This demonstrates
    the versatility of FOL as a specification language.

    The *standard first-order theory of arithmetic* would consist of all the
    sentences true of the symbols $\{0,1,+,*\}$, but it has been demonstrated
    that no axiomatization (even a *recursive enumerable* one, which only
    requires a computer to generate them and not recognize them) can be
    complete w.r.t. the standard theory. *Primitive recursive arithmetic* was
    introduced to provide a more constructive foundation for mathematics; this
    allows for functions to be defined in terms of a few base functions (ie.
    constant, successor, and projection operations), a simple function
    composition scheme, and by *primitive recursion*.

Set Theory:
:   Set theory provides an encoding for talking about mathematics with wide
    applicability. The original formulation which allowed constructing sets of
    elements with arbitrary properties proved to be unsound (Russel's paradox).
    Axiomatization of set-theory restored soundness; this came in the form of ZF
    set-theory (Zermelo, Fraenkel, and Skolem). A single predicate $\in$ is
    introduced along with various ways of constructing sets and appropriate
    axioms relating $\in$ to those constructions.

Higher-order Logic:
:   FOL only allows variables to range over individuals of the model; in
    second-order logic variables can also range over first-order function and
    predicate symbols. $N^{th}$ order logic will allow for variables to range
    over $N-1^{th}$ function and predicate symbols, higher-order logic (HOL)
    contains $N^{th}$-order logic for all $N$.

    HOL was originally meant by Russell to rule out Russell's paradox be
    creating a heirarchy of types and having rules about where formulas of
    various types can be used. Later, Church's simply theory of types subsumed
    this, which placed function types with domain at level $N$ and codomain at
    level $N+1$ at level $N+1$. Also introduced was the syntax of
    lambda-abstraction and application, along with *typing judgement* rules
    associated with terms built from this syntax.

    Another formulation of HOL by Andrews called system $Q_0$ takes equality
    (over terms) and equivalence (over predicates) as primitive for each type,
    with other symbols being derivable. A *term context* is introduced, which is
    a term with a single *hole* in it, along with a single inference rule and
    four axioms.

    HOL can express finiteness, which means it does not satisfy compactness.
    Induction axioms (expressed as an infinite axiom schema in FOL) can be
    expressed as a single axiom in HOL. In the *standard* interpretation, even
    just second-order logic is incomplete, but *Henkin models* of HOL, which
    interperet function types as maps between sets, are complete. Monadic
    second-order logic restricts the higher-order variables to monadic
    predicates (unary predicates), which makes it decidable.

Combining Decision Procedures - Manna Zarba - 2003
==================================================

Abstract
--------

We give a detailed survey of the current state-of-the-art methods for combining decision procedures.
We review the Nelson-Oppen combination method, Shostak method, and some very recent results on the combination of theories over non-disjoint signatures.

Summary
-------

Decision procedures have enabled program analysis and verification tools to make powerful advances in recent years.
Domain-specific decision procedures are advanced enough to be used efficiently for reasoning about a specific problem, but are not useful outside that domain.
Nelson-Oppen combination (and the more specific Shostak combination) allow us to combine decision procedures under some assumptions about the underlying theories of each decision procedure.
Both methods require that the signatures of the individual theories be disjoint, a restriction that this paper explores removing.

### Preliminaries

The syntax and semantics of order-sorted theories is provided, similar in style to the presentations given in papers by Meseguer.
Order-sorted models (algebras in the case of equational theories) are discussed, as well as order-sorted morphisms (including isomorphisms).
The notions of $T$-(un)satisfiability and $T$-validity are developed, allowing them to state what a **decision problem** and **decision procedure** are for a class of first-order formulas.
Several theories are also provided, including $T_\mathbb{E}$ (theory of equality/uninterpreted functions), $T_\mathbb{Z}$ (Presburger arithmetic), $T_\mathbb{R}$ (theory of reals), $T_\mathbb{L}$ (parameterized lists), and $T_\mathbb{A}$ (parameterized arrays).

### Nelson-Opeen (non-deterministic)

The nondeterministic version of Nelson-Oppen combination is presented in this section.
We will be restricting ourselves to deciding satisfiability of quantifier-free formulas from a set of stably infinite theories with disjoint signatures.
A theory is **stably infinite** if every satisfiable formula is also satisfiable in a model with an infinite domain.
Theorem 1 shows that the theory $T_\mathbb{E}$ is stably infinite.

The procedure for Nelson-Oppen combination of two signatures (given the above restrictions) is broken into two phases:

1.  Variable Abstraction: Any non-variable subterm in a formula is replaced with a fresh variable (and an equality between the fresh variable and the subterm is added).
    Any disequalities between non-variable terms are broken into a disequality of variables with the variables set equal to the original terms.
    Now each literal in the formula is from only one of the signatures; partition the literals by which theory they are from (literals only involving variables may go into either partition).

2.  Check: Between the shared variables of the partition of literals, generate all possible equivalence relations.
    For each generated equivalence relation, check if that equivalence relation (interpreted as FO-equality) is satisfiable with the partition of formula from that theory.
    If any equivalence relation is satisfiable with both theories, then *sat*, else *unsat*.

Several examples of the non-deterministic Nelson-Oppen decision procedure are provided, including one where the procedure is shown to break if one of the theories is not stably infinite.

In arguing for the correctness of this procedure, several theorems are developed.
For all theorems, assume two theories $(\Sigma_1, T_1)$ and $(\Sigma_2, T_2)$ with $\Sigma_1 \cap \Sigma_2 = \varnothing$.
Fix $\Phi_1$ and $\Phi_2$ as sets of formula from $\Sigma_1$ and $\Sigma_2$, respectively.
Theorem 2 shows that $\Phi_1 \cup \Phi_2$ is satisfiable iff each $\Phi_i$ has a model $\mathcal{M}_i$, $|\mathcal{M}_1| = |\mathcal{M}_2|$, and the equivalence relation of the shared variables in the $\mathcal{M}_i$ agree.
Theorem 3 shows that $\Gamma_1 \cup \Gamma_2$ is $T_1 \cup T_2$ satisfiable iff there is an equivalence relation between the shared variables of $\Gamma_i$ which is satisfiable in each of the $T_i \cup \Gamma_i$.
Theorem 4 shows that if $T_1$ and $T_2$ each are stably infinite with disjoint signatures, and there are decision procedures for $T_i$, then Nelson-Oppen gives a decision procedure for $T_1 \cup T_2$.
Theorem 5 generalizes Theorem 4 to $n$ theories.

The complexity of non-deterministic Nelson-Oppen is discussed, and it's argued that it quickly becomes impractical to use this method.
In addition, it's clarified that stable infiniteness is a **sufficient** condition, but not a **necessary** one.

### Nelson-Oppen (deterministic)

A deterministic version of Nelson-Oppen is presented which avoids the impracticallity of the non-deterministic version.
The first phase (Variable Abstraction) is kept, but the non-determinstic Check phase is replaced by a set of inference rules for deducing *sat* or *unsat*.
In this inference system, the set of partitioned formula are kept in a tuple $\langle \Gamma_1, \Gamma_2, E \rangle$, where $E$ is the current equivalence relation on shared variables.

-   Contradiction Rule: If $\Gamma_i \cup E$ is $T_i$ *unsat*, return **false**.
-   Equality Propogation: If $T_i \cup \Gamma_i \cup E \models x = y$, deduce $\langle \Gamma_1, \Gamma_2, E \cup \{ x = y \} \rangle$.
-   Case Analysis: If $T_i \cup \Gamma_i \cup E \models \lor_{i \in 1..n} x_i = y_i$, check if one of $\langle \Gamma_1 , \Gamma_2 , E \cup \{ x_i = x_j \} \rangle$ is *sat*.

Several examples of using this inference system are provided, including one where *sat* is deduced and another where *unsat* is deduced.

An argument for the correctness of this inference system is supplied, with proofs that it is terminating and preserves satisfiability of the whole system.
Lemma 1 shows that the inference system is terminating.
Lemma 2 shows that for each inference rule, the initial state is satisfiable iff one of the final states is so.
Lemma 3 shows that if no inference rules can be applied and we have not reached **false**, then the system is satisfiable.
Theorem 8 shows that under the assumptions of $T_i$ stably infinite and of disjoint signatures, this deterministic Nelson-Oppen provides a decision procedure for quantifier-free formula from $T_1 \cup T_2$.

A **convex** theore is defined as one where for every disjunct $\lor_{i \in 1..n} x_i = y_i$, $T \cup \Gamma \models \lor_{i \in 1..n}$ iff $T \cup \Gamma \models x_j = y_j$ for some $j \in 1..n$.
Theorem 9 shows that for $T_1$ and $T_2$ stably infinite, convex, and of disjoint signatures, the Case Analysis inference rule is no longer needed to achieve a decision procedure in $T_1 \cup T_2$.
Theorem 10 shows that under these same assumptions, if the component decision procedures for $T_i$ are polynomial time, then so is the combined procedure.
Theroem 11 shows that if $T$ is convex and has models with more than one element, it is also stably infinite.

### Shostak

The notion of a **Shostak Theory** is developed and integrated into the wider Nelson-Oppen combination infrastructure.

A theory $T$ is **solvable** if it has a **solver**; a solver for a theory $T$ is a function $solve$ such that:

-   If $T \models s = t$ then $solve(s = t) = true$.
-   If $T \models s \neq t$ then $solve(s = t) = false$.
-   Otherwise, return a substitution $\sigma = \{ x_1 / t_1, ... x_n / t_n \}$ (with variables in $t_j$ away from $x_{1..n}$), with $s = t \iff \exists y_1 ... y_k . \land_{i \in 1..n} x_i = t_i$ $T$-valid.

Several examples of theories with/without solvers are presented which give an intuitive feel for what a *solvable* theory is like.

A **Shostak Theory** is defined as a theory $T$ that:

-   Does not contain predicate symbols in its signature.
-   Is convex.
-   Is solvable.

Given a Shostak Theory, a simplified inference system can be used for decidability:

-   Contradiction 1: $\Gamma \cup \{ s \neq t \}$ deduces **false** if $solve(s = t) = true$.
-   Contradiction 1: $\Gamma \cup \{ s =    t \}$ deduces **false** if $solve(s = t) = false$.
-   Equality Elimination: $\Gamma \cup \{ s = t \}$ deduces $\Gamma \sigma$ if $solve(s = t) = \sigma$.

This procedure removes equalities from the given $\Gamma$ (via substituting) until either **false** is deduced or what is left is only dis-equalities.
Lemma 4 shows that this inference system is terminating.
Lemma 5 shows that each inference rule preserves satisfiability.
Lemma 6 shows that if **false** is not deduced after running to completion, the final conjunction is satisfiable.
Theorem 12 shows that if $T$ is a Shostak theory, then quantifier-free satisfiability in $T$ is decidable.

Integration into Nelson-Oppen is shown, including correctness results and efficiency gains.
Theorem 13 shows that given any number of disjoint-signature stably infinite theories where a subset are Shostak theories (and the remainder are decidable), decidability in the union theory is decidable.
Theorem 14 shows that given any number of disjoint-signature Shostak theories, combining with $T_\mathbb{E}$ is still decidable.

Given that some of the theories in a set are Shostak, one can use this fact to deduce implied equalities more easily (which is demonstrated via several examples).
The notion of solver is generalized to operate on a set of equalities, producing a substitution out of the entire set which is substituted back into the remainder of the formula.

---
- id: manna-zarba-combining-decision-procedures
  type: chapter
  author:
  - family: Manna
    given:  Zohar
  - family: Zarba
    given:  Calogero G.
  editor:
  - family: Aichernig
    given:  Bernhard K.
  - family: Maibaum
    given:  Tom
  issued:
  - year: 2003
  title: Combining Decision Procedures
  container-title: Formal Methods at the Crossroads. From Panacea to Foundational Support
  publisher: Springer Berlin Heidelberg
  page: '381-422'
  ISBN: '978-3-540-40007-3'
  DOI:  '10.1007/978-3-540-40007-3_24'
  URL:  'https://doi.org/10.1007/978-3-540-40007-3_24'
...

A New Correctness Proof of the Nelson-Oppen Combination Procedure - Tinelli Harandi - 1996
==========================================================================================

Abstract
--------

The Nelson-Oppen combination procedure, which combines satisfiability procedures
for a class of first-order theories by propagation of equalities between
variables, is one of the most general combination methods in the field of theory
combination. We describe a new nondeterministic version of the procedure that
has been used to extend the Constraint Logic Programming Scheme to unions of
constraint theories. The correctness proof of the procedure that we give in this
paper not only constitutes a novel and easier proof of Nelson and Oppen's
original results, but also shows that equality sharing between the
satisfiability procedures of the component theories, the main idea of the
method, can be confined to a restricted set of variables. While working on the
new correctness proof, we also found a new characterization of the consistency
of the union of first-order theories. We discuss and give a proof of such
characterization as well.

Summary
-------

Nelson and Oppen provided one of the first combination theories for first-order
theories, with much effort since then focused on the more specific cases of
equational theories and unification problems. The generalting of the
Nelson-Oppen (NO) method means that it has use in constraint logic programming
for combining theories there. In this paper, consistency of combined first-order
theories is discussed, and a proof of the NO method's correctness for combining
theories is supplied.

### The Nelson and Oppen Combination Procedure

Assume we have decision procedules for multiple theories $\T_1, ..., \T_n$ over
disjoint signatures $\Sigma_1, ..., \Sigma_n$, and define the *simple
Conjunction Normal Form* formulas for a theory to be conjunctions of literals
(denoted $sCNF(\T)$ for theory $\T$). Define $\T := \bigcup_{i=1}^n \T_i$ and
$\Sigma := \bigcup_{i=1}^n \Sigma_i$. Given procedures to decide satisfiability
in each $\T_i$, the NO method can decide satisfiability in $\T$ (under
assumptions on the theories $\T_i$).

Because a formula $\phi$ for theory $\T$ may contain mixed symbols from any of
the sub-theories $\T_i$, it's necessary to define the *separate form* of
$\phi$ as $\phi' := \phi_1 \land ... \land \phi_n$, where $\phi_i \in
sCNF(\T_i)$. This separate form is achieved by *abstraction* of the sub-terms
and sub-formulas which do not belong to the same sub-theory as their enclosing
context (call the sub-term an *alien sub-term*). To get to this purified form,
take equations of the form $t_1 = t_2$ and generate the conjunct $z = t_1 \land
z = t_2$ (for $z$ a fresh variable). Additionally, for an alien sub-term $t$ in
$\phi[t]$, replace $t$ with a fresh variable $x$ (to get $\phi[x]$) and add
the equation $x = t$.

Given any formula $\phi$ with separate form
$\phi' = \phi_1 \land ... \land \phi_n$, we have that $\phi$ is satisfiable in
$\T$ iff $\exists \overline{z} . \phi'$ is satisfiable in $\T$ (where
$\overline{z}$ are the variables introduced in separation). It may be the case
that every separate formula $\phi_i$ is satisfiable in its component theory, but
that $\phi'$ as a whole is not satisfiable. To remedy there, the Nelson-Oppen
procedure propagates derived equalities of variables between each component
$\phi_i$. It may be the case that a single equality is not enough to establish
satisfiability in some $\T_i$, but that a disjunction of equalities is needed;
in this case $\T_i$ is *non-convex* and the Nelson-Oppen combination procedure
must be implemented to reason by cases efficiently to handle these disjunctions.

Without loss of generality, the rest of the paper focuses on the case of two
component theories $\T_1$ and $\T_2$ (for simplicity). An *arrangement* of a
separate form $\phi_1 \land \phi_2$ is defined as some partition on the shared
variables of $\phi_1$ and $\phi_2$, representing the choices of which to make
equal and which to make dis-equal. For every pair of variables (say $x_1$
and $x_2$) shared by the formulas, either $x_i = x_j$ or $x_i \neq x_j$ must
show up in the arrangement, and the arrangement equalities must be an
equivalence relation on the set of shared variables.

A non-deterministic algorithm for deciding satisfiability in the combined theory
$\T$ is given (assuming some conditions on the sub-theories $\T_i$, described
later). The algorithm has two phases; (i) non-deterministically select some
arrangement of the shared variables $\overline{x}$ denoted $ar(\overline{x})$ and
then (ii) check that $\phi_i \land ar(\overline{x})$ is satisfiable in $\T_i$ for
$i \in \{1,2\}$. If there is an arrangement making it satisfiable, the
non-determinism in the algorithm ensures it is picked, otherwise the formulas
together are unsatisfiable. Note that this non-deterministic presentation also
side-steps any issues in non-convexity of theories described above. A
determinstic implementation that gains in incrementality but must implement
backtracking for non-convex theories is also discussed.

### Correctness of the Combination Procedure

The union of two theories $\T_1$ and $\T_2$ (denoted $\T_1 \cup \T_2$) is the
deductive closure of $\T_1 \cup \T_2$ (recall that a theory $\T_1$ is the set of
all sentences deductively provable from $\T_1$). Combining theories is not
straightforward because often properties of the component theories (in
particular *consistency*) are not *modular*.

Proposition 3.1 gives necessary and sufficient conditions under which theories
can be combined to yield a consistent theory:

> Suppose two theories $\T_1$ and $\T_2$ are consistent (and have disjoint
> signatures $\Sigma_1$ and $\Sigma_2$). Then the union $\T_1 \cup \T_2$ is
> consistent iff there is a cardinal $\kappa$ such that both $\T_1$ and $\T_2$
> have a model of cardinality $\kappa$.

Proposition 3.2 generalizes proposition 3.1 slightly to reason about unions of
arbitrary consistent theories (instead of just signature disjoint theories)
using reducts of their models:

> Let $\T_1$ and $\T_2$ be two consistent theories with respective signatures
> $\Sigma_1$ and $\Sigma_2$. Their union is consistent iff there is a model
> $\M_1$ of $\T_1$ and a model $\M_2$ of $\T_2$ such that their reducts to
> $\Sigma_1 \cap \Sigma_2$ are isomorphic.

Using the upward Lowenheim-Skolem theorem and proposition 3.1, one obtains
Corollary 3.3:

> Let $\T_1$ and $\T_2$ be as in proposition 3.1, but such that they both admit
> an infinite model. Then their union is consistent.

By considering equational theories (which admit axiomatizations in the
universally quantified equational fragment of FOL), and defining an equational
theory $\E$ as *$E$-consistent* if it admits a model of cardinality greater than
1, we get corollary 3.4:

> Let $\E_1$ and $\E_2$ be two signature-disjoint equational theories. If they
> are $E$-consistent, then so is $\E_1 \cup \E_2$.

Now we have the machinery to identify the conditions on component theories that
make the above Nelson-Oppen decision-procedure combination method sound and
complete w.r.t. the combined theories. The authors motivate these conditions
with an example formula $\phi := \phi_1 \land \phi_2$, where
$\phi_i \in sCNF(\T_i)$ and $\T_1$ only admits finite models while $\T_2$ only
admits infinite models. This formula and a corresponding arrangment selected by
the NO-combination procedure is satisfiable in each individual theory, but in
the combined theory there is no satisfying assignment. Given the upward
Lowenheim-Skolem theorem, it's sufficient to require that each component theory
$\T_i$ is *stably-infinite* (definition 3.3):

> A consistent quantifier-free theory $\T$ with signature $\Sigma$ is called
> *stably-infinite* iff any quantifier-free $\Sigma$-formula is satisfiable in
> $\T$ iff it is satisfiable in an infinite model of $\T$.

Some lemmas are then proved regarding satisfiability of closed equational
formulas in equational models (which will be used to reason about the selected
arrangements of shared variables between sub-theories). These lemmas and the
*Craig Interpolation Theorem* allow proving proposition 3.8, which states the
soundness of the above decomposition in the case where the arrangement picked
between the shared variables of the sub-formula makes all of the variables
dis-equal. Corollary 3.9 reduces the case of general arrangements to this
specific case of all-disequality arrangements.

This all yields proposition 3.10 (Soundness):

> Given decision procedures two signature-disjoint, stably-infinite theories
> $\T_1$ and $\T_2$, if one of the pairs $\langle \psi_1, \psi_2 \rangle$ output
> by the non-deterministic NO-combination procedure above is such that $\psi_i$
> is satisfiable in $\T_i$ ($i \in \{1, 2\}$), then the input formula is
> satisfiable in $\T = \T_1 \cup \T_2$.

as well as a corresponding Completeness proof, proposition 3.11:

> If a formula $\phi \in sCNF(\T)$ is satisfiable in $\T$, then there exists an
> output pair $\langle \psi_1, \psi_2 \rangle$ of the decomposition phase of the
> above non-deterministic NO-combination procedure such that $\psi_i$ is
> satisfiable in $\T_i$.

### Conclusions and Further Developments

A decsion procedure for combined first-order theories is provided, along with a
proof of its correctness under assumptions on the component theories involved.
Many theories of interest are not stably-infinite, but this requirement only
seems to be a sufficient condition on theory combination, not a necessary one.
Additionally, the signature-disjointness of the component theories can be
restrictive, leading the authors to explore being able to add shared constant
and function symbols.

---
- id: tinelli-harandi-nelson-oppen-proof-correctness
  type: chapter
  author:
  - family: Tinelli
    given: Cesare
  - family: Harandi
    given: Mehdi
  editor:
  - family: Baader
    given: Frans
  - family: Schulz
    given: Klaus U.
  issued:
  - year: '1996'
  title: A new correctness proof of the nelson-oppen combination procedure
  container-title: 'Frontiers of combining systems: First international workshop,
    munich, march 1996'
  publisher: Springer Netherlands
  publisher-place: Dordrecht
  page: '103-119'
  URL: http://dx.doi.org/10.1007/978-94-009-0349-4_5
  DOI: 10.1007/978-94-009-0349-4_5
  ISBN: '978-94-009-0349-4'
...

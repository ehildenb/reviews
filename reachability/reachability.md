A Logical Reconstruction of Reachability - Rybina Voronkov - 2003
=================================================================

Abstract
--------

In this paper we discuss reachability analysis for infinite-state systems.
Infinite-state systems are formalized using transition systems over a
first-order structure. We establish a common ground relating a large class of
algorithms by analyzing the connections between the symbolic representation of
transition systems and formulas used in various reachability algorithms. Our
main results are related to the so-called guarded assignment systems.

Summary
-------

\newcommand{\M}{\mathbb{M}}
\newcommand{\D}{\mathcal{D}}
\newcommand{\V}{\mathcal{V}}
\newcommand{\T}{\mathcal{T}}
\newcommand{\satis}{\models}
\newcommand{\unsatis}{\not\models}

The authors provide an abstract definition of reachability in terms of a
transition system over a first-order structure. Checking reachability is reduced
to checking the validity of a formula over the signature of the first-order
structure. Generic algorithms are provided to do both forwards and backwards
reachability: these algorithms assume access to a solver which can decide
satisfiability and validity in the underlying first-order theory. Additionally,
the paper explores the more specific case of GAS (*guarded assignment systems*),
which reduces the complexity of the reachability problem. Assuming a GAS,
certain *stability* properties can be shown about the forwards and backwards
reachability problems; in particular the "next state" function is stable w.r.t.
positive existential formulas and conjunctive constraints, and the "previous
state" function is stable w.r.t. positive existential formulas, conjunctive
constraints, quantifier-free formulas, and simple constraints (Lemma 17).

Throughout the paper, a first-order structure $\M$ over a domain $\D$ is
assumed, where a *state* in the system is a valuation $s: \V \to \D$ ($\V$ a
set of variables). A formula $A$ is said to *represent* a set of states $S$ if
$s \in S$ iff $\M, s \satis A$. Additionally, a *transition relation* $\T$ is a
set of pairs of states, $(s: \V \to \D, s': \V \to \D)$, which is
*represented* by formula $B$ if $(s, s') \in \T$ iff $\M,s,s' \satis B$. A state
$s_n$ is *forward reachable* from $s_1$ if there is a sequence of states
$s_1, ..., s_n$ such that $(s_i, s_{i+1}) \in \T$ (similarly, $s_1$ is *backward
reachable* from $s_n$).

A *reachability problem* gives formulas $In$ (representing initial states),
$Fin$ (representing final states), and $Tr$ (representing the transition
relation), and asks if there are $s \in In$, $s' \in Fin$ such that $s'$ is
reachable from $s$ w.r.t. $Tr$. This problem is in general undecidable, but
special cases of it (eg. where satisfiability/validity in $\M$ are decidable)
become decidable. Note that, given a formula $A(\V)$ representing a set of
states, the set of states reachable in a step forward are
$\exists \V' . (A(\V') \land Tr(\V', \V))$, and in a step backward are
$\exists \V' . (A(\V') \land Tr(\V, \V'))$. This lets us define *forward
reachability* as the sequence of formulas $FR_i$ with $FR_0(V) = In(V)$,
$FR_{i+1}(V) = FR_i(V) \lor \exists \V' . (FR_i(\V') \land Tr(\V', \V))$.
Similarly, *backward reachability* as the sequence of formulas $BR_i$ with
$BR_0(V) = Fin(V)$,
$BR_{i+1}(V) = BR_i(V) \lor \exists \V' . (BR_i(\V') \land Tr(\V, \V'))$.

Note that we can now construct a forward (backward) reachability algorithm by
observing (Theorem 7 - also works with appropriate reversals of forward/backward
constructs):

> (i) There exists a final state reachable from an initial state if and only if
>     there exists a number $i \geq 0$ such that
>     $\M \satis \exists \V . (FR_i(\V) \land Fin(\V))$.
> (ii) If there exists a natural number $i \geq 0$ such that
>     $\M \unsatis \exists \V . (FR_i(\V) \land Fin(\V))$ and
>     $\M \satis \forall \V . (FR_{i+1}(V) \implies FR_i(V))$, then there exists
>     no final state reachable from an initial state.

Fig. 1 in the paper contains the algorithms for forward and backward
reachability constructable using this theorem. Note that it requires
satisfaction/validity to be checkable in the model $\M$, which may severly limit
the class of acceptable theories $\M$. Theorem 9 shows that these algorithms are
sound and semi-complete.

When specialized to certain cases, decidability of reachability can drastically
improve; moreover it may improve differently in the forward/backwards cases.
This paper focuses on *GAS (guarded assignment systems)*. A guarded assignment
(on variables $\V$) is a formula of the form
$P \land v'_1 = t_1 \land ... \land v'_n = t_n \bigwedge \land_{v \in \V \setminus \{v_1, ..., v_n\}} v' = v$
where $P$ is a formula with variables in $\V$ and $t_1, ..., t_n$ are terms with
variables in $\V$. Denote this as $P \Rightarrow v_1 := t_1, ..., v_n := t_n$. A
GAS is a finite set of guarded assignments defining a transition relation. Note
that a GAS has for each state a finite number of successors, and that a deadlock
state is definable as $\lnot (P_1 \lor ... \lor P_n)$ where $P_i$ are the guards
of the transitions of the system.

Stepping forward from $A(\V)$ with guarded assignment $u$ can be defined as
$A^u(v_1, ..., v_n) = \exists \V' . A(\V') \land P(\V') \land v_1 = t'_1 \land ... \land v_n = t'_1$
($t'_i$ denotes $t_i$ with variables in $\V$ replaced by primed variables from
$\V'$). Similarly, stepping backward from state $A(\V)$ using guarded assignment
$u$ can be defined as
$A^{-u}(v_1, ..., v_n) = P(v_1, ..., v_n) \land A(t_1, ..., t_n)$. Notice that
stepping backward is inherently simpler because the assignment of the guarded
assignment provides Skolem functions for the existential quantification that
arises from the general version of $BR$ given above. This menas that for
backwards reachability on quantifier-free GAS where $Fin$ and $In$ are
quantifier free, only quantifier-free queries to the $\M$-solver need to be made
(this **does not** hold for forwards reachability).

In the given algorithms for reachability, the reachable states are stored as a
disjunction of formulas. When checking state-subsumption (ie. if the next (prev)
state is subsumed by the current state so that symbolic execution can stop),
having all of the states available as a single disjunction is bad for
computability (as the formula is large), but good for being able to successfully
prove subsumption. A *local* algorithm is also given, which stores the reached
states instead as a set, and checks for subsumption of the next (prev) state by
any individual in the set. While this makes the checks easier and more
efficient, it may say that subsumption has not happened though it could have. If
the local algorithms terminate, then so do the global ones.

Based on the input theory $\M$, one may have even further reductions of the
complexity of formulas over which satisfiability must be checked. A simple
example is quantifier elimination; if $\M$ has quantifier elimination, it may be
worth it to take advantage of that to make simpler queries to the $\M$-solver
(though it may also be expensive to run the quantifier elimination). Another
example propery of $\M$ is that every negation of an atomic formula can be
turned into a disjunction of positive atomic formulas; consider
$\M \satis \forall \V . A_1 \land ... \land A_n \implies B_1 \land ... \land B_m$
iff
$\M \unsatis \exists \V . A_1 \land ... \land A_n \land (\lnot B_1 \lor ... \lor \lnot B_n)$
iff
$\lor_{i \in 1...m} \M \satis \exists V . A_1 \land ... \land A_n \land \lnot B_i$.
This can be turned into a simple constraint (or disjunction of simple
constraints) given the above property of $\M$.

---
- id: rybina-voronkov-logical-reconstruction-reachability
  type: paper-conference
  author:
  - family: Rybina
    given: Tatiana
  - family: Voronkov
    given: Andrei
  issued:
  - year: 2003
  title: A logical reconstruction of reachability
  container-title: Perspectives of systems informatics, 5th international andrei ershov memorial conference, PSI 2003, akademgorodok, novosibirsk, russia, july 9-12, 2003, revised papers
  page: 222-237
---

Simulating Reachability Using First-order Logic with Applications to Verification of Linked Data Structures - Lev-Ami Immerman Reps Sagiv Srivastava Yorsh - 2009
=================================================================================================================================================================

Abstract
--------

This paper shows how to harness existing theorem provers for first-order logic
to automatically verify safety properties of imperative programs that perform
dynamic storage allocation and destructive updating of pointer-valued structure
fields. One of the main obstacles is specifying and proving the (absence) of
reachability properties among dynamically allocated cells.

The main technical contributions are methods for simulating reachability in a
conservative way using first-order formulas—the formulas describe a superset of
the set of program states that would be specified if one had a precise way to
express reachability. These methods are employed for semiautomatic program
verification (i.e., using programmer-supplied loop invariants) on programs such
as mark-and-sweep garbage collection and destructive reversal of a singly linked
list. (The mark-and-sweep example has been previously reported as being beyond
the capabilities of ESC/Java.)

Summary
-------

The authors present a first-order logic theorem prover to specify reachability
properties for linked data structures. Such reasoning abounds in practical
examples, such as for garbage collection, specifying absence of deadlocks, etc.

One of the main contributions of this paper is an axiomatization of transitive
closure. Many formulas contain transitive closure, which is something most
first-order theorem provers cannot handle. To remedy this, the authors replace a
formula $\chi$ with $\chi'$, where each appearance of $TC[f]$ is replaced with a
new binary relation symbol $f_{tc}$. From $\chi'$ the authors try to generate a
first-order axiom $\sigma$ such that if $\sigma \rightarrow \chi'$ is valid in
first order logic, then the original formula $\chi$ is valid in first order
logic with an oracle for transitive closure. Of course, since there is no
recursively enumerable TC-complete axiom system, this process cannot be
complete, though all TC axiom schemes added are proved sound.

The authors also define an induction principle for first-order formulas, which
uses this transitive closure axiomatization. They also define three TC-sound
axiom schemes, denoted coloring axioms, that are provable from the induction
axiom, but more useful than induction in practice. They also prove that their
axiomatization is TC-complete for words. Finally, they demonstrate the
usefulness of their approach with by verifying some practical examples, such as
reversing a list, appending two linked list, and the mark phase of a simple mark
and sweep garbage collector.

---
references:
- id: Lev-Ami2005
  type: chapter
  author:
  - family: Lev-Ami
    given: T.
  - family: Immerman
    given: N.
  - family: Reps
    given: T.
  - family: Sagiv
    given: M.
  - family: Srivastava
    given: S.
  - family: Yorsh
    given: G.
  editor:
  - family: Nieuwenhuis
    given: Robert
  issued:
  - year: '2005'
  title: Simulating reachability using first-order logic with applications to verification
    of linked data structures
  container-title: 'Automated deduction – cade-20: 20th international conference
    on automated deduction, tallinn, estonia, july 22-27, 2005. proceedings'
  publisher: Springer Berlin Heidelberg
  publisher-place: Berlin, Heidelberg
  page: '99-115'
  URL: http://dx.doi.org/10.1007/11532231_8
  DOI: 10.1007/11532231_8
  ISBN: '978-3-540-31864-4'
...

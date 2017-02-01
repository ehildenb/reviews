Construction of Abstract State Graphs with PVS - Graf Saidi - 1997
==================================================================

Abstract 
---------

In this paper, we propose a method for the automatic construction of an abstract
state graph of an arbitrary system using the PVS theorem prover.  Given a
parallel composition of sequential processes and a partition of the state space
induced by predicates $\varphi_1, \ldots, \varphi_l$ on the program variables
which defines an abstract state space, we construct an abstract state graph,
starting in the abstract initial state. The possible successors of a state are
computed using the PVS theorem prover by verifying for each index $i$ if
$\varphi_i$ or $\neg\varphi_i$ is a postcondition of it. This allows an abstract
state space exploration for arbitrary programs.

Summary
-------

The authors define a particular abstraction scheme for an arbitrary system using
the PVS theorem prover. Abstraction schemes had been proposed before, though
much more automation is present with this approach, specifically using the PVS
theorem prover. The user need only to define the initial predicates (which can
be refined) and proof strategy to be used.

In the concrete system, each transition is assumed to be a guarded assignment of
the form $g_i(\overline x) \mapsto \overline x := ass_i(\overline x)$ where each
$g_i$ is a boolean PVS-expression and $ass_i$ is a tuple of PVS-expressions.

The abstraction scheme associated with this concrete system is induced by a
(user-defined) set of $l$ predicates $\hat{\varphi_i}$. The abstract states are
the set of $3^l + 1$ monomials of these predicates, where a monomial is a
conjunction of $\hat\varphi_i$ and $\neg\hat{\varphi_i}$. This forms a complete
lattice where the ordering is implication, the meet (greatest lower bound) is
conjunction, and the join (least upper bound) is a weaker operator than
disjunction such that
$(\hat\varphi_1 \wedge \hat\varphi_2) \sqcup (\hat\varphi_2 \wedge \hat\varphi_3) = \hat\varphi_2$.

The concretization $\gamma$ of an abstract state $\hat m$ is simply
$\gamma(\hat m) = \hat m[\varphi_i/\hat\varphi_i]$. That is, every abstract
predicate is substituded with its corresponding concrete predicate. For each
concrete transition, the abstract successor of an abstract state $\hat m$
(denoted $\tau_i^A(\hat m)$) is $false$ if in the concretization of $\hat m$,
the negation of the guard can be proved ($\gamma(\hat m) \Rightarrow \neg g_i$).
The abstract predicate $\hat\varphi_j$ is present in the abstract successor of
$\hat m$ if all successors of states satisfying $\gamma(\hat m)$ satisfy
$\varphi_j$. Similarly for $\neg\hat\varphi_j$. Since the implications can be
dischared to PVS, the PVS theorem prover is used to "compute" the successor of
an abstract state.

Invariants or the set of reachable states can be computed using a forward
analysis starting with the abstract initial states $I^A$. One such invariant is
$X_{j+1} = \sqcup_{i=1}^p \tau_i^A(X_j)$, and the invariant is the meet from 0
to $\infty$ of all these $X_j$. A stronger invariant can be computed using
arbitrary disjunctions of abstract states and applying the abstract transition
only to canonical monomials. Both these invariants can be improved with an
iterative backward analysis: starting with $Y_0$ as the computed invariant set
and at each point let $Y_{j+1}$ be $Y_j$ conjuncted with the weakest
precondition of $Y_j$.

If the abstraction is not sufficient, the user can add more predicates. With
this, one need not re-check all previous implications, but only those that
previously could not be proved valid.

As an example, this scheme was used in verification of an alternating bit
protocol, where the correctness is $\square(OUT = IN \vee OUT = tail(IN))$. The
initial predicates chosen were $OUT = IN$ and $OUT = tail(IN)$ but those were
not enough, and were refined by adding a predicate expressing that the last sent
message is at the head of $IN$. With these predicates, and using backward
analysis to strengthen the invariant, the property was proved automatically. The
scheme was also used in automatic verification of a bounded retransmission
protocol, which had only previously been verified with heavy user interaction.

References
----------

-   Abstract interpretation: A Unified Lattice Model for Static Analysis of Programs by Constructions or Approximations of Fixpoints
    Cousot Cousot - 1977
-   Generation of Reduced Models for Checking Fragments of CTL
    Dams Grumberg Gerth - 1993
-   A tool for Symbolic Program Verification and Abstraction
    Graf Loiseaux - 1993
-   A Tutorial on Specification and Verification Usinv PVS
    Shankar Owre Rushby - 1993

----
-   id: abstract-state-graph-construction-pvs
    type: article-journal
    author:
    -   family: Graf
        given: Susanne
    -   family: Saidi
        given: Hassen
    issued:
    -   year: 1997
    title: Construction of abstract state graphs with PVS
    container-title: Computer Aided Verification
    page: 72-83
    DOI: 10.1007/3-540-63166-6_10
...

\newcommand{\Vect}[1]{\overline{ #1 }}

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
$(\hat\varphi_1 \bigtriangledown \hat\varphi_2) \sqcup (\hat\varphi_2 \wedge \hat\varphi_3) = \hat\varphi_2$.

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

Questions
---------

-   In the 3nd paragraph, the abstraction scheme is defined as a user-defined
    set of predicates (I assume atomic predicates). In the 2nd to last
    paragraph, further abstraction is defined as adding more predicates, which
    means that the state-space grows (as opposed to shrinking) in
    the abstraction. Should it be more that you add more axioms to the systems
    (formulas that you claim are true), ruling out classes of abstract states?
    
    Answer: Adding predicates does not result in further abstraction but rather
    a refinement of the abstraction. Such refinement isn't used to shrink the
    state-space, but rather to prove a property that previously couldn't be
    verified (see example in last paragraph).

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
---

Abstract Interpretation: A Unified Lattice Model for Static Analysis of Programs by Construction or Approximation of Fixpoints - Cousot Cousot - 1977
=====================================================================================================================================================

Abstract
--------

A program denotes computations in some universe of objects. Abstract
interpretation of programs consists in using that denotation to describe
computations in another universe of abstract objects, so that the result of
abstract execution give some informations on the actual computations. An
intuitive example (which we borrow from Sintzoff) is the rule of signs. The text
$-1515*17$ may be undestood to denote computations on the abstract universe
$(+), (-), (\pm)$ where the semantics of arithmetic operators is defined by the
rule of signs. The abstract execution
$-1515*17 \implies -(+)*(+) \implies (-)*(+) \implies (-)$, proves that
$-1515+17$ is a negative number. Abstract interpretation is concerned by a
particlar underlying structure of the usual universe of computations (the sign,
in our example). It gives a summary of some facets of the actual executions of a
program. In general this summary is simple to obtain but inacurrate (e.g.
$-1515+17 \implies -(+)+(+) \implies (-)+(+) \implies (\pm)$). Despite its
fundamental incomplete results abstract interpretation allows the programmer or
the compiler to answer questions which do not need full knowledge of program
executions or which tolerate an imprecise answer (e.g. partial correctness
proofs of programs ignoring the termination problems, type checking, program
optimizations which are not carried in the absence of certainty about their
feasibility, ...).

Summary
-------

Static analysis of programs requires knowing the possible states at each point
in the executions. Often times, it is hard to calculate a finite (or suitably
small) representation (usually symbolic with constraints) of the possible states
at each program point. To handle this, symbolic states/constraints can be
generalized to include more states than possible at execution, giving an
*abstract interpretation* of the program. Abstractions can be tailored to an
analysis (assuming some properties about the analysis to be performed), removing
irrelevant details of execution and making proofs about programs simpler.
Additionally, abstractions (and their corresponding *concretizations*) are
composable, allowing one to move up and down the astraction ladder as necessary
for an analysis. In this paper, the authors provide a detailed definition of
abstract interpretation. The techniques are demonstrated on a simple toy
language, and some properties of abstract interpretation are explored.

A simple model of programs is presented which consists of a program statements
connected by arcs (control points) in the program. Nodes are partitioned into
five types: `Entry`, `Assignment`, `Test`, `Junction`, and `Exit`. *$Arcs$*
connect the nodes in a program, and represent "program points" (points where the
state of the program is un-ambiguous). The *state* of a program is given as an
assignment of identifiers in the program to their respective values (the
environment), as well as which program point the program is currently at. States
are a partial order by set inclusion. Semantics are provided by defining the
$nstate: States \to States$ function, which takes a set of states of the
program, evaluates the next node for each state, and returns the resulting set
(and is monotonic over states).

The *context* of a program point is defined as the set of all environments
possible at that point. The $nstate$ function can be lifted to contexts in the
obvious way. A *context-vector* is a map from program arcs to contexts, and
$nstate$ is lifted pointwise to context-vectors (remaining monotonic). A
context-vector is *consistent* (complete) if every possible environment possible
a each program point is contained in the context vector, and is sound if no
contexts not realizable at execution are contained in the context-vector. As
such, an abstract interpretation is a 6-tuple:
$\langle Cont, \circ, \leq, \top, \bot, Int: Arc \to \Vect{Cont} \to Cont \rangle$
where $Cont$ is the carrier set of possible contexts,
$\langle Cont, \circ, \leq, \top, \bot \rangle$ is a complete semilattice with
bottom, and $Int: Arc \to \Vect{Cont} \to Cont$ is the semantic interpretation
of each arc in the program given a context-vector. $Int$ can be lifted to a
function $\Vect{Int}: \Vect{Cont} \to \Vect{Cont}$, which is monotonic.
$\Vect{Int}$ thus has fixpoints, and a unique least-fixpoint.

Note that this defines a "join" abstraction, one can also easily find "meet"
abstractions. Additionally, when the underlying model has appropriate notions of
control-flow, backwards analysis can be useful too ($pstate$), as opposed to
fowards analysis ($nstate$). This gives four different types of abstract
interpretation. The paper also mentions another axis (looking for minimal or
maximal solutions) giving a total of 8 types.

An ordering on interpretations $I \leq I'$ (each their own 6-tuple) can be
defined by finding suitable monotonic functions, $\alpha: Cont \to Cont'$
("abstract") and $\gamma: Cont' \to Cont$ ("concretize"), such that
$id_{Cont} \leq \alpha ; \gamma$ and $\gamma ; \alpha \leq id_{Cont'}$ (where
the ordering on contexts is lifted pointwise over these functions). The authors
use the slightly stronger condition $\gamma ; \alpha = id_{Cont'}$, which has
also been called an "abstract injection". Note that this pair of functions form
an adjunction between the lattices $Cont$ and $Cont'$. These adjunctions can be
composed, given a lattice of interpretations. Section 7 has a simple yet
informative example of a lattice of abstractions complete with the lattices
associated to the contexts of each abstraction.

To obtain an abstract evaluation of a program, start with the context vector
$Vect{\bot}$ and iteratively apply $\Vect{Int}$ until a fixed-point is reached.
If there are no infinite ascending chains in the lattice $\Vect{Cont}$, then
this iteration of $\Vect{Int}$ will reach a fixed-point, which is Kleene's
method. If $\Vect{Int}$ has infinite ascending chains (eg. many programs with
loops in control-flow), *widening* techniques must be used. Widening accelerates
the calculation of a fixed-point by adding in monotonic over-approximations of
the $\circ$ operator, denoted $\bigtriangledown$, with the property
$C \circ C' \leq C \bigtriangledown C'$, and that there are no infinite ascending
chains of the form
$s_0 = C_0 \leq ... \leq s_n = s_{n-1} \bigtriangledown C_n \leq ...$ for
arbitrary contexts $C_i$. The operator $\bigtriangledown$ can be used to build a
function $AInt: \Vect{Cont} \to \Vect{Cont}$ which cannot increase forever (so
it has a fixed-point), but can over-approximate the fixed-point of $\Vect{Int}$
(this *ascending approximation sequence* bounds the least-fixed-point from
above). In the case of imperative programs, it is sufficient to use the widening
operator at least once per control-flow loop in the program. See section 9.2 for
an example of a simple widening operator.

As widening may result in overshooting the fixed-point, making the analysis
unsound, it may be necessary to *narrow* the result to get a better
approximation of the fixed-point of $\Vect{Int}$. Note that the function
$\Vect{Int}$ itself will narrow any over-approximation of the least fixed-point
by the nature of least fixed-points of monotonic functions.

As in the widening case, a suitable narrowing operator $\bigtriangleup$ is
defined, with properties $C \leq C' \implies C \leq C \bigtriangleup C' \leq C'$
and every infinite sequence
$s_0 = C_0 \geq ... \geq s_n = s_{n-1} \bigtriangleup C_n \geq ...$ for
arbitrary $C_i$ is not strictly decreasing. This can be lifted to a function
$\Vect{Cont} \to \Vect{Cont}$ which has a fixed-point and bounds the greatest
fixed-point of $Int$ from above (a *truncated descending sequence*)..

The *ascending approximation sequence* and *truncated descending sequence* can
also be appropriately dualized, giving a *truncated ascending sequence* as a
lower bound of the least-fixed-point, and a *descending approximation sequence*
as a lower bound of the greatest-fixed-point. In section 9.5, there are nice
diagrams showing how all these approximations behave on the space of
$\Vect{Cont}$.

---
-   id: abstract-interp-lattice-model-static-analysis
    type: paper-conference
    author:
    -   family: Cousot
        given: Patrick
    -   family: Cousot
        given: Radhia
    issued:
    -   year: '1977'
    title: 'Abstract interpretation: A unified lattice model for static analysis of programs by construction or approximation of fixpoints'
    title-short: Abstract interpretation
    container-title: Proceedings of the 4th acm sigact-sigplan symposium on principles of programming languages
    collection-title: POPL ’77
    publisher: ACM
    publisher-place: New York, NY, USA
    page: '238-252'
---

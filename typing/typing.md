Polymorphism, Subtyping, and Type Inference in MLsub
====================================================

The authors present a type system called MLsub, which supports ML-like typing
along with arbitrary recursive types and subtyping. Their language includes
base-type `Bool`, along with `let ... in ...` bindings. Additionally, type
inference is supported, and has *compact principal types* (canonical type for an
expression where other types of it are instances).

To avoid undecidability, the idea of *polar types* are used, which keep track of
whether a type occurs in the position of a "consumer"/negative occurance `t-`
(eg. the domain of a function type) or a "producer"/positive occurance `t+` (eg.
the range of a function type). In addition, the meet `/\` and join `\/`
operators of the type lattice are restricted in where they can appear; joins
(type union) can only appear in positive posititions and meets (type
intersection) can only appear in negative positions. Many type-inference
algorithms work by collecting *type constraints* as they unify types (then
solving the constraints afterwards); by introducing polar types and the
corresponding restrictions, type constraints become much simpler (only of the
form `t+ <= t-`), so that the only checks that need to happen are of the form
`t1 \/ t2 <= t` and `t <= t1 /\ t2` (non-convex checks). Then the type
constraints can be systematically translated into syntactic types (eg.
`a -> a | a <= t` turns into `a /\ t -> t`; and `a -> a | t <= a` turns into
`a -> a \/ t`).

Standard unification does not work for type inference anymore, because it
doesn't take into account the difference between positive and negative
occurances of a type. Instead, a *biunification* algorithm is presented, which
produces two substitutions for each type variable (one for positive occurances
and one for negative) called a *bisubstitution* (eg. `[t+/a+, t'-/a-]`). A
bisubstitution returned by the algorithm must be *stable*, which means (i) the
negative substitution for each type variable must be a subtype of the positive
substitution (eg. for `[t+/a+, t'-/a-]` we must have `t'- <= t+`) and (ii) it
must be idempotent. A bisubstitution is said to *solve* a set of
type-constraints if the set of all *instances* of the type-constraints is equal
to the set of all instances of the solved type (where `inst(t)` is defined as
`{t' | t can be used as type t'}`). If the biunification algorithm presented
returns a solution to the set of constraints `t+ <= t-`, then that solution is
stable and is a correct solution.

Finally, a presentation to *type automata* is given, where two types are
equivalent iff their corresponding automata accept the same languages. The
type-automata are then converted to NFAs, which can be reduced with any NFA
reduction techniques, and then converted back into syntactic types. This
provides an effecient way both to infer types and to reduce them (as pointed out
by the paper, type-systems with subtypes often yield large/unwieldly types).
They claim that their algorithm is efficient enough to retype an entire program
on each key-stroke in their online interface.

### References

-   Algebraic Subtyping (Thesis)
    Dolan - 2016
-   Type Inference in the Presence of Overloading, Subtyping, and Recursive Types
    Kaes - 1992
-   Non-structural Subtype Entailment in Automata Theory
    Niehren Priesnitz - 2001

---
-   id: typing-mlsub
    type: paper-conference
    author:
    -   family: Dolan
        given: Stephen
    -   family: Mycroft
        given: Alan
    issued:
    -   year: 2017
    title: Polymorphism, subtyping, and type inference in mLsub
    container-title: Proceedings of the 44th ACM SIGPLAN symposium on principles of
      programming languages, POPL 2017, paris, france, january 18-20, 2017
    page: 60-72
...

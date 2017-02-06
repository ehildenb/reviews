A Machine-Oriented Logic Based on the Resolution Principle - Robinson - 1965
============================================================================

Abstract
--------

Theorem-proving on the computer, using procedures based on the fundamental
theorem of Herbrand concerning the first-order predicate etdeulus, is examined
with a view towards improving the efticieney and widening the range of practical
applicability of these procedures. A close analysis of the process of
substitution (of terms for variables), and the process of truth-functional
analysis of the results of such substitutions, reveals that both processes can
be combined into a single new process (called *resolution*), iterating which is
vastly more efficient than the older cyclic procedures consisting of
substitution stages alternating with truth-functional analysis stages.

The theory of the resolution process is presented in the form of a system of
first-order logic with just one inference principle (the resolution
principle). The completeness of the system is proved; the simplest
proof-procedure based on the system is then the direct implementation of the
proof of completeness. Howewer, this procedure is quite inefficient, and the
paper concludes with a discussion of several principles (called search
principles) which are applicable to the design of efficient proof-procedures
employing resolution as the base logical process.


Summary
-------

Robinson describes a machine-oriented infrence principle called resolution, with
the intent of making it easier for automated theorem proving while perhaps
sacrificing the inherent simplicity of inference principles in other theorem
provers.

Robinson first outlines definitions in order to provide a framework for
describing the inference principle. Notably, he assumes each sentence is given
in prenex form with no existential quantifiers. Existential quantifiers are
eliminated by adding function symbols. For example, $\forall x_1\exists x_2
R(x_1, x_2)$ is converted to $\forall x_1R(x_1, f(x_1))$.

A ground resolvent is defined on ground classes (sets of atomic
formulas/negations) $C$ and $D$, as the new clause $(C - L) \cup (D - M)$, where
$L$ and $M$ are complementary singletons. A ground resolution is the set of
ground clauses with all ground resolvents, and an N-th ground resolution is the
nth level of ground resolutions.

Robinson then relates these definitions to Herbrand's Theorem. A Herbrand
universe of a set of clauses is the set of ground terms occurring in that
set. Herbrand's Theorem states that, given a finite set of clauses $S$ and its
Herbrand universe, $S$ is unsatisfiable if and only if some finite subset of
$H(S)$ is unsatisfiable. Here $H(S)$ represents the set of all ground clauses
obtainable from $S$ using instantiations coming from $H$.



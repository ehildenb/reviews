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
Herbrand universe $H$, $S$ is unsatisfiable if and only if some finite subset of
$H(S)$ is unsatisfiable. Here $H(S)$ represents the set of all ground clauses
obtainable from $S$ using instantiations coming from $H$. This is equivalent to
stating that $S$ is unsatisfiable if and only if $P(S)$ is unsatisfiable for
some finite subset $P$ of $H$. This restatement suggests constructing a sequence
$P_0 \subseteq P_1 \subseteq \ldots$ such that the union of all $P$ is equal to
$H$, and checking each $P_i(S)$ for satisfiability. $S$ is unsatisfiable iff
$P_j(S) is unsatisfiable$ for some $j$. The roadblock here is constructing these
$P_i$ efficiently.

Robinson then gives a method for testing satisfiability of a set of *ground*
clauses, by constructing the sets $S, R(S), R^2(S), \ldots$, where $R(\cdot)$
represents the resoluution of a set, until either some $R^n(S)$ contains the
empty clause, or $R^n(S) = R^{n+1}(S)$. A lemma is proved stating that in the
former case, the set $S$ is unsatisfiable, and in the latter case it is
satisfiable. Herbrand's Theorem is thus again restated, stating that a set of
clauses $S$ is unsatisfiable iff for some finite subset $P$ of $H$, theere is
some $n$ such that $R^n(P(S))$ contains the empty clause. Some additional lemmas
are proved allowing the order of $R^n$ and $P$ to be reversed, and a final lemma
states $P(R^n(S))$ contains the empty clause iff $R^n(S)$ contains the empty
clause. This leaves the final restatement of Herbrand's Theorem as the
Resolution Theorem:

If $S$ is any finite set of clauses, $S$ is unsatisfiable iff $R^n(S)$ contains
the empty clause, for some $n \geq 0$. Actually finding the resolutions requires
a unification algorithm, as terms in different clauses may be distinct but still
resolvable.

Robinson proceeds to give examples to show the power of this inference
system. Specifically, he uses it to prove the following property: Any
associative system which has left and right solutions $x$ and $y$ for all
equations $x \cdot a = b$ and $a \cdot y = b$, there is a right identity
element. After translating this system into the logic used in the paper, one
arrives at the empty clause after just three resolutions. This example
illustrates how one perhaps sacrifices the intuition behind a proof for
efficiency and conciseness.

Finally, two search principles are discussed to improve the resolution
procedure. First ``pure" literals are identified, and clauses containing them
are removed. Pure literals are literals which can't be part of a
resolution. Such literals often would resolt in the normal resolution procedure
to never terminate. Next, clauses are removed if they are subsemed by another
clause, i.e. for clauses $C$ and $D$ there is a substitution $\sigma$ such that
$C\sigma \subseteq D$. In this case the clause $D$ would be removed. These
refinements do not compromise soundness or completeness.

References
----------

- A Note on the Entscheidungsproblem
  Church - 1936
- A Computing Procedure for Quantification Theory
  Davis Putnam - 1960
- A Semi-decision Procedure for the Functional Calculus
  Friedman - 1963
- A Proof Method for Quantification Theory
  Gilmore - 1960
- Theorem Proving on the Computer
  Robinson - 1960
  
---
references:
- id: Robinson:1965:MLB:321250.321253
  type: article-journal
  author:
  - family: Robinson
    given: J. A.
  issued:
  - year: '1965'
    month: '1'
  title: A machine-oriented logic based on the resolution principle
  container-title: J. ACM
  publisher: ACM
  publisher-place: New York, NY, USA
  page: '23-41'
  volume: '12'
  issue: '1'
  URL: http://doi.acm.org/10.1145/321250.321253
  DOI: 10.1145/321250.321253
  ISSN: '0004-5411'
...

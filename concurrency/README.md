---
header-includes:
- \usepackage{stmaryrd}
---

Coherence Generalises Duality: a Logical Explanation of Multiparty Session Types - Carbone Lindley Montesi Schurman Wadler - 2016
=================================================================================================================================

Abstract
--------

Wadler introduced Classical Processes (CP), a calculus based on a
propositions-as-types correspondence between propositions of classical linear
logic and session types. Carbone et al. introduced Multiparty Classical
Processes, a calculus that generalises CP to multiparty session types, by
replacing the duality of classical linear logic (relating two types) with a more
general notion of coherence (relating an arbitrary number of types). This paper
introduces variants of CP and MCP, plus a new intermediate calculus of
Globally-governed Classical Processes (GCP). We show a tight relation between
these three calculi, giving semantics-preserving translations from GCP to CP and
from MCP to GCP. The translation from GCP to CP interprets a coherence proof as
an arbiter process that mediates communications in a session, while MCP adds
annotations that permit processes to communicate directly without centralised
control.

Summary
-------

The authors expand on previous literature of Classical Processes (CP) and
Multiparty Classical Processes (MCP). Most notably, they introduce an
intermediate calculus denoted Globally-governed Classical Processes (GCP). They
prove bisimulations from CP to GCP and from GCP to MCP. Thus they show how
coherence in MCP, where a global type is related to many local typers,
generalizes the notion of duality in CP (relating two types).

First, the authors introduce the previously developed notion of Classical
Processes (CP). In CP, propositions are interpreted as session types. Output
types correspond to the sender while input types correspond to a receiver. For
example, the type $A \otimes B$ corresponds to sending $A$ and then proceeding
as $B$, while the dual type $A \bindnasrepma B$ corresponds to receiving $A$ then
proceeding as $B$. Syntax for processes and typing rules for these processes are
given. Among these are the "Cut" rule, which combines parallel composition with
name restriction. The typing rules exactly correspond to proof rules in
classical linear logic. Thus, there is a variant of Curry-Howard for CP where
propositions are session types and proofs are processes. Of course, semantics
for CP are given, which include rules for cut reductions. This cut elimination
corresponds to communication in this variant of Curry-Howard, similar to how
normalization of proofs in propositional logic correspond to evaluation of
programs in simply typed lambda calculus. A cut elimination theorem proves that
all processes evaluate to something that is not a cut, similar to how all simply
typed lambda caluclus programs terminate.

The authors conclude the section with an example that shows some limitations of
CP. This example, known as the two-buyer protocol, involves two buyers
attempting to buy a book from a seller. The first buyer first communicates the
name of the book to the seller, and the seller sends the price to both
buyers. The first buyer sends to the second buyer how much he is willing to
contribute, and the second buyer can either complete the transaction by paying
the rest or cancel the transaction. In order to express this protocol, a
complicated arbiter process needs to be constructed over three endpoints, one
for each buyer and the seller.

Next, Globally-governed Classical Processes (GCP) are introduced. In GCP, using
coherence, the notion of duality seen in CP is generalized. Rather than
restricting the framework to composing two processes, GCP allows composition of
an aribtrary $n$ processes, governed by a *global type*. For example, if
$\tilde{x}$ is a sequence of endpoints and $G,H$ are global types,
$\tilde{x} \rightarrow y(G).H$ represents the process where each endpoint in
$\tilde{x}$ sends a message to $y$ to create a new session of type $G$ and
continue as $H$. Typing rules and semantics for coherence are given, as well as
a cut elimination theorem. The two-buyer protocol is then addressed again. With
GCP, the arbiter process as before is no longer necessary, as all three
processes can be composed easily with GCP. Finally, translations from CP to GCP
and GCP to CP are given, and a bisimulation between these two is proved.

Next, the authors address Multiparty Classical Processes (MCP). In the original
presentation of MCP, output and input are inverted. The authors avoid making
this sacrifice in defining GCP. In addition, GCP differs from MCP in the sense
that in MCP, actions are annotated with the endpoint that they should interact
with. GCP avoids this by using the global type as the central point of
control. The authors define a simple translation from GCP to a variant of MCP,
by recursively adding such annotations. Typing, coherencce rules, and semantics
for MCP are given, and they are very similar to those for GCP. Finally, a
bisimulation between GCP and MCP is shown.

---
- id: carbone-lindley-montesi-schurmann-wadler-coherence-generalises-duality-multiparty-session-types
  type: paper-conference
  author:
  - family: Carbone
    given: Marco
  - family: Lindley
    given: Sam
  - family: Montesi
    given: Fabrizio
  - family: Schürmann
    given: Carsten
  - family: Wadler
    given: Philip
  editor:
  - family: Desharnais
    given: Josée
  - family: Jagadeesan
    given: Radha
  issued:
  - year: '2016'
  title: Coherence Generalises Duality: A Logical Explanation of Multiparty Session Types
  container-title: 27th international conference on concurrency theory (concur 2016)
  collection-title: Leibniz international proceedings in informatics (lipics)
  publisher: Schloss Dagstuhl–Leibniz-Zentrum fuer Informatik
  publisher-place: Dagstuhl, Germany
  page: 33:1-33:15
  volume: '59'
  annote: 'Keywords: Multiparty Session Types, Linear Logic, Propositions as Types'
  URL: http://drops.dagstuhl.de/opus/volltexte/2016/6181
  DOI: http://dx.doi.org/10.4230/LIPIcs.CONCUR.2016.33
  ISBN: '978-3-95977-017-0'
  ISSN: '1868-8969'
...

Concurrent Object Oriented Programming - Agha - 1990
====================================================

Summary
-------

Distributed software systems exhibit *concurrency*, where many different
computations can be happenning simultaneously. Additionally, object-oriented
programming has risen as a popular way to organize data and code into modular
sub-components and provides abstraction techniques for programmers. This paper
discusses *concurrent object oriented programming* (COOP), which allows for
concurrent execution of code in multiple objects and supports *message passing*
between them as a communication medium.

Different problems have different concurrency structure. For example a sieve
approach to testing primality demonstrates *pipeline concurrency*; as candidate
solutions are generated they can concurrently be tested for primality (usually
done sequentially afterward). *Divide and conquer concurrency*, alternatively,
fits problems like summing a binary tree of numbers; the problem can be broken
into similar sub-problems and the solution obtained from some operation over
sub-solutions. In *cooperative problem solving*, tasks are broken into sub-tasks
and intermediate results are stored in objects for all the workers to access and
update as they work.

### Actor Model

The actor model of computation encapsulates COOP by allowing for distinct
*actors* (objects with mailboxes) which can send and recieve messages to each
other (to request computations/recieve results). Each actor executes on its own
independently of other actors, and messages are sent asynchronously between
them. The atomic actor primitives are *create* (make a new actor with a
specified behaviour and initial data), *send* (send a message to a specified
actor), and *become* (replace current actor with new behaviour and data).

Control structures in actor languages correspond to message-passing patterns.
For example, the `factorial` actor, when queried with the input `n`, will create
a *customer* `A` which it sends the number `n` and the behavior of "wait for
another number to multiply `n` with". Then the `factorial` actor would call
itself with the request "compute `factorial (n-1)` and send it to actor `A`".
This doesn't speed up calculating factorial, but allows the `factorial` actor to
immediately begin responding to other requests to compute factorial.

Many actors would naturally be associated to functions (same input results in
same output), but some may have history-sensitive output. In that case, the
*become* primitive is useful for changing out some local state of the actor to
reflect the affect of history on the outputs of the actor.

A traditional join-point in a parallel program is similarly represented as a
*join continuation*. An actor must compute sub-expressions $e_i, i \in 1..n$, so
it will create sub-actors $A_i$, each one which computes one sub-expression and
sends the result to the join-continuation actor $B$. Once $B$ has all the
results, it can compute the overall output. Because of the asynchronous nature,
each $A_i$ can compute completely in parallel, and the original actor can
immediately begin processing other requests.

To make concurrent computation feasible, a notion of *fair merge[^fair_merge]*
is needed; this specifies that every messsage sent will eventually reach its
destination. The actor model implicitely has this assumption by stating that
every message sent must eventually be received. Delivery of messages in an
asynchronous setting cannot be guaranteed, but there are intermediate delivery
guarantees that can be useful in practice too.

[^fair_merge]: A *fair merge* of two strings is a third string where each
               element from each input string must appear eventually.
               <https://en.wikipedia.org/wiki/Unbounded_nondeterminism>
    
### Building Actor Systems

The Actor primitives are low-level (an assembly of distributed systems);
realistic system building should be done with higher-level comunication,
synchronization, and coordination primitives. For example, when making function
calls the plumbing of sending arguments and recieving the results in a
continuation actor can be inserted automatically. Another example would be
primitives for implementing synchronization protocols which provide various
guarantees on the behaviour of the network.

*Event diagrams* display traces of actor systems and can be used to debug the
system by examining the sequence of events that led to a bad state. Because they
can be needlessly verbose in a system of reasonable size, sub-sequences of
events can be bundled into *transactions*; transactions can have
sub-transactions, and two transactions must not overlap on their
sub-transactions. This logical grouping of events makes debugging and
visualizing actor systems realistic.

Interacting with system resources in a concurrent programming language can be
tough, due to the potential explosion in the number of sub-computations. Some
computation paths may be higher priority, or more efficient to explore early.
One can model this with *sponsor* actors, which connect to the underlying
resources and use their communication to control actor creation and scheduling.
These sponsors can also recognize some computation patterns and try to optimize
them (eg. folding multiple requests together).

### Other Models of Objects

Another concurrent model of objects is *sequential concurrent processes*. The
sequential computation primitives are often specific to a particular
architecture, making some of the concurrency less available or efficient. A
better approach would be to provide compilers to each architecture for the actor
programs, which would take advantage of that systems resources.

At least two models of expression evaluation are possible. In *call/return
style*, sub-expressions are evaluated (possible concurrently) and the results
passed back and substituted in the overall expression before evaluation
continues. In *customer passing style*, sub-expressions are evaluated and then
forwarded to the *customer* actor (the join-continuation), which takes the
values of the sub-expressions and computes the result of the overall expression.
In customer passing style, the original actor is freed up to immediately process
the next request instead of waiting for results.

In most concurrent languages, synchronization is explicit. Implicit
synchronozation schemes (eg. evaluation of sub-expressions should be
attempted/performed synchronously) can be specified on actor systems, allowing
for more concise programming.

Reasoning about object behaviour is simplified in the actor model. Actors can be
defined independently and modularly, allowing local reasoning but abstracting
over internal actor state. Additional locality laws which govern how actors can
know each other's name provide the ability to reason about *open distributed*
actor systems.

### Object Oriented Programming

OOP supports code reusability by grouping semantically related data and
operations. Inheritance and reflection are useful aspects of OOP languages.

A *class* acts as a grouping of common data and operations from which objects
are templated off of. Having *inheritance* between classes allows for re-use of
common code, in order to keep changes to data or operations localized to
relevant classes and objects. Inheritance may change synchronization conditions.

Many parts of the state of execution of a system are implicit (eg. settings in
the environment/runtime). If a language supports *reflection*, these pieces of
data can be *reified* into objects which can be manipulated and then inserted
back into place, providing a mechanism for modifying and controlling the
environment/runtime from within the language.

### Research Efforts

Several projects investigating actor systems and COOP are provided.


---
- id: agha-concurrent-object-oriented-programming
  type: article-journal
  author:
  - family: Agha
    given: Gul
  issued:
  - year: '1990'
  title: Concurrent object-oriented programming
  container-title: Commun. ACM
  page: '125-141'
  volume: '33'
  issue: '9'
  URL: http://doi.acm.org/10.1145/83880.84528
  DOI: 10.1145/83880.84528
...

A Foundation for Actor Computation - Agha Mason Smith Talcott - 1993
====================================================================

Abstract
--------

We present an actor language which is an extension of a simple functional
language, and provide a precise operational semantics for this extension. Actor
configurations represent open distributed systems, by which we mean that the
specification of an actor system explicitly takes into account the interface
with external components. We study the composability of such systems. We define
and study various notions of testing equivalence on actor expressions and
configurations. The model we develop provides fairness. An important result is
that the three forms of equivalence, namely, convex, must, and may equivalences,
collapse to two in the presence of fairness. We further develop methods for
proving laws of equivalence and provide example proofs to illustrate our
methodology.

Summary
-------

The actor model is an intuitive way to model concurrent computation through a
series of local components, known as actors. The authors extend normal lambda
calculus and present a particular actor language. They have a notion of actor
configurations, which includes a composition operator that is associative,
commutative, and has a unit. This helps remedy one of the main drawbacks of the
actor model, as normally actor models cannot be composed. They define an
operational semantics of actor configurations, including an explicit fairness
requirement. An equational theory is also developed based on the notion of
observational equivalence.

### Actor Language Constructs

The actor language presented provides primitives for local computation. These
are *send*, *become*, *newadr*, and *initbeh*. $\textsf{send}(a, v)$ sends a
message with contents $v$ to $a$. $\textsf{become}(b)$ creates a new actor to
carry out the rest of the computation, and changes the behavior of the current
actor to $b$. $\textsf{newadr}()$ creates a new actor and returns its address,
and $\textsf{initbeh}(a,b)$ initializes an actor at adress $a$ to have behavior
$b$.

In this actor language, one can easily represent objects with local state,
similar to a reference cell in ML. One can also express a *join continuation* to
carry out concurrent computation, as a join continuation synchronizes the
evaluation of different arguments. For example, one can use such a join
continuation to compute the product of all leaves of a tree, since the arguments
to the multiplication operator $\cdot$ can be evaluated concurrently.

### A Simple Lambda-Based Actor Language

Next, the actor language is made rigorous. First, explicit syntax is given, and
then *actor configurations* are defined. An actor configuration is of the form
$\langle \alpha \mid \mu \rangle ^\rho_\chi$. Here, $\alpha$ represents the
actor map, $\mu$ is a multiset of messages, $\rho$ represents the
*receptionists*, or names of externally visible actors, and $\chi$ are external
actors outside the configuration to which messages may be directed. The
operational semantics are specified using a reduction semantics. Two
configurations are composable if the $\alpha$'s have disjoint domains, and the
external actors for the first configuration intersected with the domain of the
actor map for the second is a subset of the receptionists of the second (and
vice versa). Associativity, commutativity, and identity axioms are proved for
such composable configurations.

### Equivalence of Expressions

A notion of expression equivalence is defined, which informally is true if two
program expressions behave the same when placed in any observing context. In
this case, an "observing context" is replaced with an "observing actor
configuration", or a configuration that contains an actor state with a hole. The
reduction semantics is extended with a rule representing if an expression is
observed.

Because the language is nondeterministic, an event may definitely occur,
definitely not occur, or occur on some executions and not occur on others. The
notion $Obs(\kappa)$ is defined, where $\kappa$ is a configuration. This yields
$\textbf{s}$ if all paths succeed, $\textbf{f}$ if all paths fail, and
$\textbf{sf}$ is there is a path that succeeds and a path that fails. Then,
three notions of observational equivalence of expressions is defined. One states
that $Obs(O[e_1]) = Obs(O[e_1])$ where $O$ is a context containing one hole. The
other two state that just the successes must coincide and the failures must
coincide. Relations between these definitions are proved, most notably that the
defintion stating that all observations are equal is equivalent to the
definition that just the successes are equal. This equivalence arises because of
the fairness requirement, and it is the notion of equivalence ($\cong$) used in
the rest of the paper. Equivalence of configurations is also discussed, yielding
the result that replacing an expression occurring in a configuration by an
observationally equivalent one yields an equivalent expression.

### Laws of Expression Equivalence

After establishing this notion of expression equivalence, a library of useful
equivalences can be established. These include a variety of laws such as
$\textsf{app}(\lambda x.e, v) \cong e[x := v]$ that can be seen as instances of
the general theorem $e_0 \mapsto^\lambda e_1 \Rightarrow e_0 \cong e_1$. Similar
notions of equivalence involving reduction contexts, such as $\textsf{let}\{x :=
e\}R[x] \cong R[e]$ are also established. Laws for equivalence on the actor
primitives can also be established, though since $\textsf{send}$,
$\textsf{become}$, and $\textsf{initbeh}$ all return $\textsf{nil}$, these laws
are limiting.

Next, since understanding how actor primitives interact with one another is very
important, commuting operations are discussed. Expressions $e_0$ and $e_1$ are
said to commute if

> $\textsf{let}\{x_0 := e_0\}\textsf{let}\{x_1 := e_1\}e \cong \textsf{let}\{x_1
> := e_1\}\textsf{let}\{x_0 := e_0\}e$

A lemma for when each of the primitive operations commute is proved, such as
$\textsf{newadr}$ commutes with $\textsf{send}, \textsf{newadr}$, and
$\textsf{initbeh}$, but not with $\textsf{become}$. Finally, it is proved that
any two expressions $e_0$ and $e_1$ commute is every operation occurring in
$e_0$ commutes with every operation occuring in $e_1$, and $e_0$ and $e_1$ are
built up using only the operations $\textsf{if}$ and $\textsf{let}$.

### Proving Expression Equivalence

Next, three different variants for expression equivalence are
discussed. Informally, the *common reduct case* concerns equivalence of
expressions with a common reduct, the *two-stage reduction case* concerns
expressions that reduce to lambda abstractions that are application equivalent,
and the *equivalence of reduction contexts case* treats equivalence of reduction
contexts.

In each of these approaches, a class of *configuration templates* $CT$ is chosen
such that $e_0 \cong e_1$ if $Obs(ct[e_0]) = Obs(ct[e_1])$ for each $ct \in
CT$. Such configuration templates are chosen by extending each syntactic class
to allow holes and defining appropriate notions of hole filling. This is done
for each variant of expression equivalence. In the common reduct case, a single
hole is added for expressions. In the two-stage reduction case, a countable
family of holes need to be added for lambda abstractions. In the equivalence of
reduction contexts case, a new hole is added for reduction contexts.

For each of these (after a lot of notation), main theorems are given for when
two expressions are equivalent. For example, in the equivalence of reduction
contexts case, if $R_j[\square := z]$ reduces uniformly to some expression $e$
for each $j$, then $R_0[\square := e] \cong R_1[\square := e]$ for any $e$.

### Discussion

Future work is discussed, as the authors view the theory in this paper as a
starting point more than anything else. Areas for future work include developing
an algebra on configurations, further study on the notions of equivalence (such
as configuration equivalence), and determining whether or not there is a context
lemma for observational equivalence of expressions.

---
references:
- id: Agha:1997:FAC:969900.969901
  type: article-journal
  author:
  - family: Agha
    given: Gul A.
  - family: Mason
    given: Ian A.
  - family: Smith
    given: Scott F.
  - family: Talcott
    given: Carolyn L.
  issued:
  - year: '1997'
    month: '1'
  title: A foundation for actor computation
  container-title: J. Funct. Program.
  publisher: Cambridge University Press
  publisher-place: New York, NY, USA
  page: '1-72'
  volume: '7'
  issue: '1'
  URL: http://dx.doi.org/10.1017/S095679689700261X
  DOI: 10.1017/S095679689700261X
  ISSN: '0956-7968'
...

Rewriting Logic as a Semantic Framework for Concurrency: a Progress Report - Meseguer - 1996
============================================================================================

Abstract
--------

This paper surveys the work of many researchers on rewriting logic since it was
first introduced in 1990. The main emphasis is on the use of rewriting logic as
a semantic framework for concurrency. The goal in this regard is to express as
faithfully as possible a very wide range of concurrency models, each on its own
terms, avoiding any encodings or translations. Bringing very different models
under a common semantic framework makes easier to understand what different
models have in common and how they differ, to find deep connections between
them, and to reason across their different formalisms. It becomes also much
easier to achieve in a rigorous way the integration and interoperation of
different models and languages whose combination offers attractive
advantages. The logic and model theory of rewriting logic are also summarized, a
number of current research directions are surveyed, and some concluding remarks
about future directions are made.

Summary
-------

### Rewriting Logic

A *sentence* of rewriting logic in an equational theory $(\Sigma, E)$ is a
sequent of the form $[t]_E \rightarrow [t']_E$. A *rewrite theory* is a set
$\mathcal{R} = (\Sigma, E, L, R)$, where $L$ is a set of labels and $R$ is a set
of *rewrite rules*. Entailment for a theory $\mathcal{R}$ contains four rules:
reflexivity, congruence, replacement, and transitivity.

Models of a rewrite theory $\mathcal{R}$ are categories
$\mathcal T_{\mathcal{R}(X)}$ where objects are equivalence classes of terms and
morphisms are equivalence classes of "proof terms" representing proofs in
rewriting deduction. The rules for generating proof terms correspond exactly to
the entailment rules for a rewrite theory. The models also have equations to
make it a category, make each function a functor, forcing the equations $E$ as
axioms, and asserting that rewrites correspond to natural transformations.

An $\mathcal{R}$-*system* is a category $S$ together with a
$(\Sigma, E)$-algebra structure given by a family of functors satisfying the
equations $E$. This defines a category denoted $\mathcal{R}$-Sys. With variables
$X$ as the empty set, the model
$\mathcal T_\mathcal{R}(\emptyset) = \mathcal T_\mathcal{R}$ is an initial
object in $\mathcal{R}$-Sys.

### Rewriting Logic as a Semantic Framework for Concurrency

<!-- While functional computations are amenable to parallelization, they are
     inherently *determinate*, i.e. the final result will always be a unique
     value. On the other hand, rewrite theories may not have this property, and in
     fact they may not even terminate.
-->

Different concurrent frameworks are discussed, and we go over some of them
below.

A labelled transition system is a "poor man's rewrite theory". Specifically, it
is a rewrite theory where $\Sigma$ is only constants, there are no equations,
and all the rules are the form $a \rightarrow b$ for constants $a$ and
$b$. Since states are not decomposable, an LTS can be nondeterministic, but
cannot exhibit concurrency.

Petri nets are a very simple concurrency model. They can be expressed as rewrite
theories very naturally. States of petri nets are alegbraically axiomatized by
associative/commutative multiset union operations with the empty multiset as
identity. Transitions in petri nets are simply labelled rewrite rules between
two of these states.

Another common model of concurrency is the Chemical Abstract Machine (CHAM),
which views distributed states as a "solution" in which many "molecules"
float. Concurrent transitions occur simultaneously as "reactions". Again, this
specifies an ACI equational theory with multisets, generalizing Petri nets.

For a general concurrent object-oriented system, configurations can be of the
form $\langle O : C \mid a_1 : v_1, \ldots, a_n : v_n \rangle$ where $O$ is the
object's name, $C$ is its class, and $a_i : v_i$ represent an attribute
identifier and its corresponding value. A bounded buffer example is given, along
with rules that illustrate the asynchronous message passing communication
between objects of typical actory systems. Additionally, object interaction that
is not asynchronous can also be modeled.

Application of rewriting logic to real-time specification has been developed,
denoted *timed rewriting logic*. Axioms are of the form $t \rightarrow_r t'$,
meaning that $t$ evolves to $t'$ in time $r$. Rewriting logic can be seen as an
instance of timed rewriting logic where all rules have time $r = 0$. However,
effort is underway to model real-time systems using standard rewriting. To do
this, the models considered are *timed automata*, which can naturally be
represented in rewriting logic.

### Rewriting Logic Languages

Next, several rewriting logic languages are discussed. The most notable
implementation of rewriting logic is Maude. Maude is based on a typed version of
rewriting logic. It is order-sorted and supports sort constraints. It has
functional modules that are Church-Rosser and terminating equational theories,
system modules that specify general rewrite theories, and object-oriented
modules, though of course it is still a strict subset of the full power of
rewriting logic.

### Other Developments and Research Directions

Related and future work are discussed. These include the notion that models of
rewriting logic have a very natural 2-categorical interpretation, which has
provided useful in connections with other concurrency theory models. Another
area of related work is how to remedy the fact that all concurrent computations
of a rewrite theory are finite, as one may want to consider infinite
computations. Other areas discussed include formal reasoning, rewriting logic as
a logical framework, and reflective logic.

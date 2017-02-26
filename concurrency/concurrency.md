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
For example, the `factorial` actor, when queried with the input `n`, will
create a *customer* `A` which it sends the number `n` and the behavior of "wait
for another number to multiply `n` with". Then the `factorial` actor would call
itself with the request "compute `factorial (n-1)` and send it to actor `A`".
This doesn't speed up calculating factorial, but allows the `factorial` actor to
immediately begin responding to other requests to compute factorial.

Many actors would naturally be associated to functions (same input results in
same output), but some may have history-sensitive output. In that case, the
*become* primitive is useful for changing out some local state of the actor to
reflect the affect of history on the outputs of the actor.

A traditional join-point in a parallel program is similarly represented as a
*join continuation*. An actor must comput sub-expressions $e_i, i \in 1..n$, so
it will create sub-actors $A_i$, each one which computes one sub-expression and
sends the result to the join-continuation actor $B$. Once $B$ has all the
results, it can compute the overall output. Because of the asynchronous nature,
each $A_i$ can compute completely in parallel, and the original actor can
immediately begin processing other requests.

To make concurrent computation feasible, a notion of *fair merge* is needed;
this specifies that every messsage sent will eventually reach its destination.
The actor model implicitely has this assumption, because it states that every
message sent to an actor must eventually be received.


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

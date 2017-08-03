Self-Assembly at the Macroscopic Scale
======================================

self-assembly: a process by which preexisting components ("separate or distinct
parts of a disordered structure") autonomously organize into patterns or
structures without human intervention.

i) components (physically) bind together and
ii) can be controlled by proper design of the components

Two classes: self- and externally-propelled

Externally propelled:

-   Penrose: geometric, 1D, "seed" will tilt neighbors to create more of itself
-   Hosokawa: hexagons form from triangles in rotating box: estimate probability
    of state transition from geometry. master equation, dynamics of mean values
    (what is this?)
-   Breivik: pair binding, polymers, magnets with different Curie points
-   White: programmable electromagnets, analytical model with quadratic growth
    (how derived?)

Observation: idea of "active" and "passive" states is recurring: components can
be "activated" under certain conditions which changes their behavior.

Self-propelled:

-   Griffith: replicate n-bit polymers (definition?). constrained growth
    (synchronous binding with 1 bind per time step)
-   F. White: 3D, magnets, fluid pipes???
-   PPT: graph grammar! N/6 hexagons, Klavins: design grammar, time complexity,
    predicting and optimizing yield (read these!!)
-   RSD: punch card trains??
-   CEBOT: "modular reconfigurable robots". "shape memory alloy"?? needs precise
    alignment. hooks, cones, infrared
-   Bereton/Khosla: cooperative repair. vision. dock and replace parts.

### Questions

-   What are the most useful / general motion primitives for swarms?

---
- id: Groß08self-assemblyat
  type: article-journal
  author:
  - family: Groß
    given: Roderich
  - family: Dorigo
    given: Marco
  issued:
  - year: '2008'
  title: Self-assembly at the macroscopic scale
  container-title: Proceedings of the IEEE
  page: '1490-1508'
  volume: '96'
...


A Grammatical Approach to Self-Organizing Robotic Systems
=========================================================

### Definitions

conformational switching: each component has several possible conformations
(shapes). Two components attach if their conformation are complimentary.
Conformations change when attached.

`robot`: discrete symbol

`assembly`: simple graph, vertex labelled by robots. Edges $\iff$ robots attached.
Each vertex x has label l(x), the state of the robot.

`rule`: pair of labelled graphs, ordered: (L,R). Must have same vertex set.

`rule types`: `constructive` if $E_L \subset E_R$, `destructive` if $E_L \supset E_R$,
or `mixed` if neither. Called `acyclic` if right hand side contains no cycles
(left side may contain cycles).

`grammar`: set of rules. If a subgraph of an assembly matches the first part of
rule, subset may be replaced by second part of rule.

`synthesis problem`: given a specification S (i.e., a logical statement about
trajectories) and an initial configuration of robots $G_0$, define a grammar
$\phi$ so that **all** trajectories arising from $G_0$ via the application of
rules in $\phi$ meet the specification.

`self-assembly synthesis problem`: Given an arbitrary graph $H$ define $\phi$ so
that only copies of $H$ emerge as stable components of the system. Ex: rings of
ten robots, or only lines of robots.

### Summary

The paper presents a theory for modelling and controlling robotic
self-assembling systems. They focus on the model where individual robotic parts
decide in a distributed way "whether and how" to execute a given graph rewriting
rule (what the authors call an "assembly rule"). In this scenario, a graph
grammar describes a distributed algorithm on a network with changing topology.

Question: Distributed algorithms usually prescribe actions by individual agents,
while graph rewriting rules act on the (labelled) network topology. How to
determine network shape match from local data?

The authors are motivated by the "programmable parts" testbed which allows
binary latching between hardware agents floated on an air table.

The authors mainly consider the self-assembly synthesis problem. Attachments
between robots can be physical or communication links, generally. The authors
assume all robots have a copy of the rule set, and adequate communication
between robots so they can come to a consensus on if they belong to an
applicable rule.

Often, it is assumed that the initial graph is the infinite graph with no edges.

A rule is `applicable` to a graph $G$ if there exists a label-preserving
monomoprhism $h: V_L \to V_G$. The function $h$ is called the `witness`. An
`action` on a graph is $(r,h)$ such that rule $r$ is applicable to $G$ with
witness $h$.

A `trajectory` of a system is a sequence $(r_i, h_i)$ of actions applied to an
initial graph. In the mathematics literature, $G_0$ is often called the `axiom`
and each trajectory is a `derivation`. These trajectories define a concurrent
system with interleaving semantics - actions may apply to disjoint parts of the
graph in different orders and produce the same result. The initial graph and the
rule set defines a nondeterministic transition system: at any step, multiple
rules may be applicable, possibly by different witnesses (aka different parts of
graph).

We may ask what types of aggregates (graph topologies) may be reachable. A
component is reachable if there exists a trajectory from $G_0$ to a graph which
contains that component. A component $H$ is `stable` if, whenever $H$
exists in $G_k$ via a monomorphism $f$, then $H$ is also a component via $f$ of
every graph in the reachable set from $G_k$. Essentially, stable components are
not changed under all possible actions.

Since graphs define only the connection topology, the same rule could apply to
different geometries of assemblies, as described in section IV-C. The authors do
not address the problem of guaranteeing certain workspace geometries from rules.

References
==========

- The power and limitations of local computations on graphs and networks
  W. Zielonka - 1992
- Grammatical self assembly for planar tiles
  Robert Ghrist - 2004
- Universal self-replication using graph grammars
  Eric Klavins - 2004
- A grammatical approach to cooperative control: the wanderers and scouts example
  Eric Klavins - 2005

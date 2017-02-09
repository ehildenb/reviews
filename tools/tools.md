SAL 2 - Moura Owre Ruess Rushby Shankar Sorea Tiwari - 2004
===========================================================

Abstract
--------

SAL 2 augments the specification language and explicit-state model checker of
SAL 1 with high-performance symbolic and bounded model checkers, and with novel
*infinite bounded* and *witness* model checkers. The bounded model checker can
use several different SAT solvers, while the infinite bounded model checker
similarly can use several different ground decision procedures. SAL 2 provides a
scriptable API for its basic model checking and analysis functions that can be
used to extend the system. All four new model checkers are implemented using
this interface. Its high-level specification language and wide range of model
checkers make SAL convenient for those seeking a ready-to-use solution, while
its scriptability and flexible choice of backend analyzers should make it
attractive to those seeking an experimental platform.

Summary
-------

This short paper describes the architecture and capabilities of the SAL 2 model
checking suite. SAL 2 has evolved into a specification language which has, as
clients, tools like PVS, SAL 1, infBMC, etc. Overall, SAL 2 is designed to be
extensible and scriptable, so that the various tools which speak the language
can be called and use each other via the Scheme scripting language. This allows
them to have high-performance model-checkers which they have refined over time,
but to additionally have a nice experimental test-bed for future work.

---
- id: moura-owre-ruess-sal-2
  type: paper-conference
  author:
  - family: Moura
    given: Leonardo
    dropping-particle: de
  - family: Owre
    given: Sam
  - family: Rueß
    given: Harald
  - family: Rushby
    given: John
  - family: Shankar
    given: N.
  - family: Sorea
    given: Maria
  - family: Tiwari
    given: Ashish
  editor:
  - family: Alur
    given: Rajeev
  - family: Peled
    given: Doron
  issued:
  - year: 2004
    month: 7
  title: SAL 2
  container-title: Computer-aided verification, CAV 2004
  collection-title: Lecture notes in computer science
  publisher: Springer-Verlag
  publisher-place: Boston, MA
  page: 496-500
  volume: 3114
---

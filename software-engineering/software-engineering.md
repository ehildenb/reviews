A Survey of Software Refactoring - Mens Tourwe - 2004
=====================================================

Abstract
--------

This paper provides an extensive overview of existing research in the field of
software refactoring. This research is compared and discussed based on a number
of different criteria: the refactoring activities that are supported, the
specific techniques and formalisms that are used for supporting these
activities, the types of software artifacts that are being refactored, the
important issues that need to be taken into account when building refactoring
tool support, and the effect of refactoring on the software process. A running
example is used throughout the paper to explain and illustrate the main
concepts.

Summary
-------

This paper presents an overview of code refactoring, maintenance, and
development techniques with a focus on cleaning up code to help with the future
development of the software project. First, *reengineering* is defined as
examining and altering a system to some new form; *restructuring* is the effect
that reengineering has on the code of a system, and *refactoring* is
restructuring specialized to OOP-style programming.

First, refactors are understood as small changes and manipulations of a codebase
to make it more readable/understandable/maintainable. These manipulations are
broken into small atomic primitives (eg. `MoveMethod` to move a method from one
class to another, `AddClass` to create a new class in the class heirarchy).
Refactoring then is broken into sub-problems of (i) identifying where to
refactor, (ii) guaranteeing that the refactor preserves behaviour, (iii)
applying a refactor, (iv) assess the effect of refactoring on code quality, and
(v) updating any other *software artifacts* (non-code parts of software like
documentation) to reflect the refactor.

Identifying where to refactor can be done with several methods. Inferring
invariants of OOP code may make it possible to remove fields or methods that
have consistent behaviour. Detecting *code smell*, code that follows some
specific pattern that is widely accepted as bad (eg. code repetition), can also
hint that refactoring needs to be done and where to do it. Additionally, logical
*code patterns* can be used to match the code in various places and inform the
developer that refactoring should happen there.

To guarantee that the refactor preserves code behaviour, a *precondition*
predicate over the code can be checked. If the precondition passes, the code is
safe to refactor. However, in practice the preconditions of refactoring may be
undecidable or impractical to implement; in light of this the precondition can
be weakened if a *postcondition* is added, if the precondition passes and after
the refactoring the postcondition also passes, then the refactor should be safe.
One natural way to check safeness is to ensure behavioural equivalence between
the input and output program; this requires marking what behaviour is important
to keep track of. Behavioural equivalence can also take advantage of tests
written for the software for a lighter-weight check. Finally, given the full
semantics of a programming language, one can just prove that the refactoring
preserves the semantics of any program in that language. After refactoring, the
resulting code quality must be assessed; this is largely subjective but often
things like performance and code cleanliness are taken into account here.

If programs in a language can be represented as a graph (eg. as a CFG or
data-flow languages), then *graph-rewriting* techniques can be used. If a
graph-rewrite matches the current program and the side-condition of the
graph-rewrite is satisfied, then the transformation is applicable. These types
of refactorings are especially composable, making them more attractive in that
sense. The effects of composing multiple of these refactors in parallel (to
distinct parts of the code) or sequentially (one after the other to the same
part of code) can be analyzed using standard rewriting analysis (eg. confluence,
critical pairs).

Several other techniques and formalisms are presented. One is *program slicing*,
where only the parts of the program which may affect the outcome of a variable
of interest in the program are kept and the refactor is checked to preserve
behaviour on that part of the program. Another is *program refinement*, where
instead a model of the desired output is created and a program is refined from
that. The refinement can be viewed as a refactoring, and it must preserve the
semantics of the original model.

In addition, the different types of software artifacts are explored. These
include programs (the actual code which represents the functionality); designs
(high-level models which capture the goals of the programmers); requirements
(desired outcome of the program); and documentation (description of how the
program achieves its goals). All of these must be evolved by the refactoring to
ensure that they stay up-to-date with the latest code.

Tool support is also discussed. Some tools are automated (eg. compilers
automatically refactory code behind-the-scenes without user support), whereas
others are only semi-automated. Many IDEs will not perform automatic
refactorings, but instead will suggest potential refactorings to the developer
who can then choose to apply them (which happens automatically by the IDE), or
perhaps the developer can choose to perform a single specific analysis and the
IDE can carry out associated refactorings automatically. It's widely agreed that
for large code-base architectural refactorings semi-automatic is the most
productive and safe way for developers. Safety (ability to guarantee semantic
preservation), configurability (ability to fine-tune refactorings), and coverage
(ability to perform a wide scope of refactorings) are also discussed.
Scalability is next, which largely talks about composability of minor
refactorings to achieve macro-refactorings which have larger effects. When
multiple small refactorings are composed, ideally the resulting refactor should
have some simpler precondition to check than each individual precondition,
allowing for code to temporarily be in a bad state while in the middle of
applynig the transformation. Finally, language independence is discussed, where
either refactoring techniques can be written down generically then instantiated
to a particular language, or the language is translated into some intermediate
representation where the refactorings are applied.

Finally, *process support* (the process of how software is developed), is
discussed. *Software reengineering* is the re-design and implementation of large
software projects (usually legacy code). While there are many models of how
software should be developed, there are fewer about how to refactor. The authors
suggest that the next best thing is *reengineering patterns*, which broadly
describe the various software transformations one might make. *Agile
development* and *extreme programming* are also discussed. These models
emphasize continuous code refactoring; features are added which may not fit
naturally in the codebase, the tests are passed, then the code is examined for
potential refactorings to make the inclusion of the new features more natural.
This leads to a tight cycle of feature development, testing, and refactoring.

Many other examples of the several topics mentioned here are discussed. The
paper seems largely focused on OOP-style programming, though does mention other
styles occasionally. The paper provides an extensive list of references for the
interested reader on all the discussed topics.

---
- id: mens-tourwe-survey-software-refactoring
  type: article-journal
  author:
  - family: Mens
    given: Tom
  - family: Tourwe
    given: Tom
  issued:
  - year: '2004'
  title: A survey of software refactoring
  container-title: IEEE Trans. Software Eng.
  page: '126-139'
  volume: '30'
  issue: '2'
...

A Rational Design Process: How and Why to Fake It - Parnas Clements - 2005
==========================================================================

Summary
-------

A purely rational design process is impossible to achieve, but we should still
strive to "fake" a rational process. In doing so we can incrementally improve
our design and development processes, smoothing out future work and making it
easier for new people to join the project. There are many things working against
a rational design process, including in-exact knowledge of system requirements,
changing requirements, poor communications, human error, preconceptions about
how software should be designed, and external forces pushing us to use imperfect
tools. In fact, any appearance of rationality in a design is because of
extensive refinement and polishing of the final presentation of the software.

Nevertheless, we should keep in mind a rational design process. This will
provide designers with a template of the actions to take in building software,
as well as providing a standard "project interface" across the multiple projects
an organization might have. The description of a development process should
describe the work products (deliverables) that will be accumulated throughout
the project, as those are the only measurable outputs of a project.

The first step in design is to establish and document the requirements of a
project. These requirements should be stated in terms of the observables
(outputs) of the system. This provides a reference to show to the user to
confirm the overall design, a template of the decisions to be made for the
programmers, an estimate of how much work needs to be done, and a basis for
settling arguments among the implementers of a system. This document should be
sound (every listed requirement is required of all implementations of the
system) and complete (any requirement of all systems like this is spelled out in
the document); any potential incompleteness of the document should be spelled
out explicitely.

The document should have a mathematical model behind it, with all the associated
terminology and background spelled out explicitely, and should be arranged
modularly so that tasks can be broken out to individual developers along module
boundary lines. Modules of the system should document their inputs and outputs,
as well as their interfaces and dependencies. Additionally, modules can be
broken into sub-modules, allowing for fine-grained separation of concerns. The
internal data-structures of each module should be included in the description,
along with descriptions of how they should behave.

As requirements evolve over time, it's important to put those changes through
the rational design process as if they had been there from the beginning. This
ensures compatibility of the changes with the rest of the project and maintains
all the useful design structures put in place by the design process.

An important part of development is developing the documentation as well. Often,
documentation is written poorly as an afterthought by the programmers who see it
as unnecessary. This leads to documentation that is poorly organized, boring,
incosistent and confusing, or myopic. Instead, if documentation is put through
the same rational design process (lay out the requirements of the documentation
in the form a questions it should answer), so that the documentation is modular
an non-repetitive, then the resulting documentation will be information-dense
and not boring to read. Any terminology or math use extensively must be
explicitely defined up front, to avoid ambiguity or repetition.

While it will not be possible to have a perfectly rational design process, it is
important to "fake it" along the way. The artifacts produced by doing so
(requirements, documentattion, module system) are useful for the cohesion of the
project. Additionally, similarly to how a program is refactored and refined
towards its final form, these artifacts can be refactored and refined along the
way to produce a piece of software which is self-contained, descriptive, and
well-documented. Design decisions will be documented as well, making it easier
of future developers to see why the software is structured as it is.

---
- id: parnas-clements-rational-design-fake-it
  type: chapter
  author:
  - family: Parnas
    given: David L.
  - family: Clements
    given: Paul C.
  editor:
  - family: Ehrig
    given: Hartmut
  - family: Floyd
    given: Christiane
  - family: Nivat
    given: Maurice
  - family: Thatcher
    given: James
  issued:
  - year: '1985'
  title: 'A rational design process: How and why to fake it'
  title-short: A rational design process
  container-title: 'Formal methods and software development: Proceedings of the
    international joint conference on theory and practice of software development
    (tapsoft) berlin, march 25–29, 1985'
  publisher: Springer Berlin Heidelberg
  publisher-place: Berlin, Heidelberg
  page: '80-100'
...

An Overview of JML Tools and Applications - Burdy Cheon Cok Ernst Kiniry Leavens Leino Poll - 2004
==================================================================================================

Abstract 
--------

The Java Modeling Language (JML) can be used to specify the detailed design of
Java classes and interfaces by adding annotations to Java source files. The aim
of JML is to provide a specification language that is easy to use for Java
programmers and that is supported by a wide range of tools for specification
type-checking, runtime debugging, static analysis, and verification.  This paper
gives an overview of the main ideas behind JML, the different groups
collaborating to provide tools for JML, and the existing applications of
JML. Thus far, most applications have focused on code for programming smartcards
written in the Java Card di- alect of Java.

Summary
-------

JML is a Java-specific tool, made for a user to specify the intended behavior of
a Java class or interface. The syntax was made to be very similar to syntax of
Java. Among supported operations are requires and ensures clauses (pre- and
post-condititions), invariants, etc. Quantification is also supported, and JML
has built-in syntax for referring to an "old" value that may be modified in the
method. Frame conditions can be specified using $\texttt{assignable}$; for
example, writing $\texttt{assignable balance}$ ensures the method will only
assign to the $\texttt{balance}$ field. JML can also support syntax for
specifying the expected behavior when an exception is thrown. There are various
tools integrated with JML, discussed in detail below.

The Extended Static Checking (ESC/Java) tool does simple static analysis for
Java code, such as dereferencing null and index out of bounds exceptions. It is
a standalone tool, but it has support with integration for JML. For example,
ESC/Java would normally warn a user when dereferencing a pointer. However, if a
JML annotation is included with a precondition stating that pointer must not be
null, ESC/Java would produce no such warning. Also, JML annotations can cause
ESC/Java to perform additional static checks, such as warning the user if a
precondition may be violated. By design, ESC/Java is neither sound nor complete
in order to increase the cost-effectiveness of the tool. A list of cases of
unsoundness and incompleteness are detailed in the ESC/Java User's Manual.

A successor to ESC/Java, known as ESC/Java2 is currently in progress. This has
various improvements over ESC/Java, including making sure it can always parse
the most up-to-date version of JML. Most significantly, ESC/Java2 will have two
major improvements over ESC/Java. First, it will integrate support for model
variables and method calls in annotations. Second, it will have support for
checking frame conditions like the $\texttt{assignable}$ clause mentioned
above. However, the CHASE tool is another static analysis tool for JML that can
currently handle these $\texttt{assignable}$ clauses. It is also neither sound
nor complete.

Clearly, a desired tool for JML is full program verification. The tool LOOP aims
to provide this. It has a semantics for sequential Java and a formal semantics
for JML defined in the PVS theorem prover. Then, the LOOP tool uses the JML
annotations to generate a proof obligation for each method and constructor,
expressed as a Hoare statement. LOOP does not intend to provide automatic
verification, that is left to the PVS user. A similar tool known as Krakatoa
also produces proof obligations for JML-annotated Java programs, but uses the
Coq theorem prover rather than PVS. The JACK tool also aims to provide
verification, though it does not require users to have expertise in a theorem
prover. Instead, JACK is aimed to be usable by any Java developer, presenting
goals and hypotheses in Java/JML-like notation.

In addition to static analysis and verification, some tools for JML aim to help
the user generate the JML specifications. The Daikon tool dynamically detects
likely program invariants, by viewing computed values at runtime and
generalizing over those values. Daikon can report properties about numbers,
collections, pointers, conditionals, and more, and outputs properties in JML
syntax. On the other hand, the Houdini tool can generate other types of JML
annotations, specifically those a uses may have missed originally. Houdini
generates candidate annotations, and then invokes ESC/Java to remove Candidate
annotations which ESC/Java find to be inconsistent with the code.

Currently, the most practical use of JML and associated tools have targeted Java
Card, a dialect of Java for programming smartcards. Almost the entire
specification of the Java Card API has been annotated with JML. Further,
ESC/Java has been used to verify realistic implementations in Java Card. Many
companies are willing to pay a lot of money to ensure relatively simple
properties about smartcard programs, such as checking that no uncaught runtime
exception reaches the top-level.

The paper concludes with some related work. Other runtime assertion checkers for
Java do not handle as much as JML can. SparkAda is a tool similar to JML, yet
for the Ada programming language. OCL has an advantage over JML in that it is
language-independent, though this can deter Java programmers, and no current
formal semantics for OCL exist (though efforts to define a formal semantics for
OCL are underway).

---
references:
- id: BURDY200375
  type: article-journal
  author:
  - family: Burdy
    given: Lilian
  - family: Cheon
    given: Yoonsik
  - family: Cok
    given: David
  - family: Ernst
    given: Michael D.
  - family: Kiniry
    given: Joe
  - family: Leavens
    given: Gary T.
  - family: Rustan
    given: K.
  - family: Leino
    given: M.
  - family: Poll
    given: Erik
  issued:
  - year: '2003'
  title: An overview of jml tools and applications1 1www.jmlspecs.org
  container-title: Electronic Notes in Theoretical Computer Science
  page: 75 - 91
  volume: '80'
  keyword: formal methods
  URL: http://www.sciencedirect.com/science/article/pii/S1571066104808107
  DOI: http://dx.doi.org/10.1016/S1571-0661(04)80810-7
  ISSN: '1571-0661'
...

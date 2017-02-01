Abstract Logical Model Checking of Infinite-State Systems Using Narrowing - Bae Escobar Meseguer - 2013
=======================================================================================================

Abstract
--------

A concurrent system can be naturally specified as a rewrite theory
$R = (Sigma, E, R)$ where states are elements of the initial algebra of terms
modulo $E$ and concurrent transitions are axiomatized by the rewrite rules $R$.
Under simple conditions, narrowing with rules R modulo equations E can be used
to symbolically represent the system's state space by means of terms with
logical variables. We call this symbolic representation a "logical state space"
and it can also be used for model checking verification of LTL properties. Since
in general such a logical state space can be infinite, we propose several
abstraction techniques for obtaining either an over-approximation or an
under-approximation of the logical state space: (i) a folding abstraction that
collapses patterns into more general ones, (ii) an easy-to-check method to
define (bisimilar) equational abstractions, and (iii) an iterated bounded model
checking method that can detect if a logical state space within a given bound is
complete. We also show that folding abstractions can be faithful for safety LTL
properties, so that they do not generate any spurious counterexamples. These
abstraction methods can be used in combination and, as we illustrate with
examples, can be effective in making the logical state space finite. We have
implemented these techniques in the Maude system, providing the first
narrowing-based LTL model checker we are aware of.

---
-   id: logical-model-checking-narrowing
    type: paper-conference
    author:
    -   family: Bae
        given: Kyungmin
    -   family: Escobar
        given: Santiago
    -   family: Meseguer
        given: José
    editor:
    -   family: Raamsdonk
        given: Femke
        dropping-particle: van
    issued:
    -   year: 2013
    title: Abstract Logical Model Checking of Infinite-State Systems Using Narrowing
    container-title: 24th international conference on rewriting techniques and applications (rTA 2013)
    collection-title: Leibniz international proceedings in informatics (lIPIcs)
    publisher: Schloss Dagstuhl–Leibniz-Zentrum fuer Informatik
    publisher-place: Dagstuhl, Germany
    page: 81-96
    volume: 21
...

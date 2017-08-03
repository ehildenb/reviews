Stream-oriented Robotics Programming: The Design of roshask - Cowley Taylor - 2011
==================================================================================

Abstract
--------

The decomposition of robotics software into a collection of loosely coupled
processes has become a core design principle of virtually every large robotics
software engineering effort over the past decade. Recently, the ROS software
platform from Willow Garage has gained significant traction due to its adoption
of sound design principles and significant software library contributions from
Willow Garage itself. This paper describes a binding from the Haskell
programming language to basic ROS interfaces. The novelty of these bindings is
that they allow for, and encourage, a higher level of abstraction in writing
programs fro robots that treat streames of values as first-class citizens. This
approach makes the fusing, transforming, and filtering of all streams fully
generic and compositional while maintaining full compatibility with the existing
ROS ecosystem.

Summary
-------

roshask is a client library for ROS which represents ROS topics as first class
values, allowing for combinators to be written to couple robotic software and
hardware components together in a compositional manner. In ROS, a *node* is a
process which may subscribe from and publish to *topics*, which are named
channels which multicast messages from publishers to subscribers. For example,
we may have a node which takes data from two separate publishers, possibly
publishing at different rates, and fuses it into one value with a binary
function. roshask provides combinators such as `everyNew` and `bothNew`, which
allow high-level timing control of asynchronous processes. Haskell is an
appropriate choice of language because its lazy semantics and abstractions such
as monads make it well-suited to efficiently treat infinite streams of data.

### Whole-Topic Programming

The notion of wholemeal programming is that programmers should specify the what,
not the how - most code should be application-specific. For example, in the
imperative ROS paradigm, one might write the following code for taking an action
when a sensor value crosses a threshold:

```
void handle_sensor(float val) {
    if (val > threshold) {
        act(val*0.1);
    }
}
```

However, if we wanted to write this code functionally, we might write:

```
subscribe "sense" >>=
publish "cmd" . fmap act . filter (> threshold)
```

This semantically separates the concepts of sensing, and acting only on values
which pass a threshold.

Another common operation in robotics is computing a sliding window average,
which can be accomplished naturally with a function which takes as arguments the
length of the window, a topic stream, and returns another topic which publishes
the monoidal composition of the elements in the window. Typeclasses such as
`Monoid` and `AdditiveGroup` can be used to constrain the message values and
we can write functions producing a more specific behavior.

Making topics first class also allows for sophisticated topic synchronization,
such as producing pairs of values every time either topic updates, or only when
both update, or transparently merging two streams with the same message type.
The paper also discusses a general interpolation combinator.

### ROS Nodes

The paper demonstrates how nodes are formed; they are mostly used for
initializing and naming input and output topics. Each executable gives nodes
names, allowing them to be registered with the ROS master server. Nodes can be
composed before compilation, which causes them to run in a single process with
shared memory, which can lead to dramatic performance increases for
high-bandwith data such as video. Examples and data are given.

### First-Class Topics




A distributed exploration algorithm for unknown environments with multiple obstacles by multiple robots
=======================================================================================================

Authors: Bravo, Ruiz, Murrieta-Cid, Aguilar, Chavez

This paper presents a complete algorithm which coordinates groups of robots to
explore unknown environments - the robots will visit and circumnavigate all
obstacles in a planar environment. The robots are assumed to have an abstract
omnidirectional sensor which detects discontinuities in depth, allowing the
robots to detect and track bitangents. The paper also assumes that when robots
are present on the same obstacle, they can freely share information - a
"rendezvous." Each robot also has a stack and a unique identifier. The algorithm
assumes all robots start at the same vertex on the same obstacle. Each robot
also can construct, according to the algorithm supplied, a tree data structure
which stores information about visited obstacles and the bitangents that connect
them.

The paper examines two cases, one where the sensor can distinguish readings
coming from different obstacles, and one where the obstacles are
indistinguishable. In the distinguishable case, each robot has a unique
distinguishable marker to allow the robot to determine when it has
circumnavigated an obstacle.

In the indistinguishable case, each robot has a unique marker that it uses to
mark its starting position while navigating around an obstacle. Each robot also
has an unlimited supply of markers that they use to mark obstacles as visited.
These markers also store information about the id of the robot that placed them,
which can be sensed by all the robots.

This paper presents an interesting, and as far as I know, unique application of
visibility-based exploration techniques. They present compelling experimental
evidence that this algorithm scales well with increasing number of robots. The
example in section III F is helpful

The main weaknesses of this paper are organization and technical clarity. In
general, I would suggest expanding the "Problem Formulation" section to include
details about the sensing, actuating and computational resources assumed in both
the distinguishable and indistinguishable cases. The paper also claims that
this algorithm scales well, but provides no analysis of the complexity of the
algorithm wrt number of robots or obstacles. There is also a claim that
backtracking will improve performance with no clear justification - what if the
time spent backtracking is more than the time saved by not revisiting obstacles?
In fact, this seems true often from Tables III and IV.

Other specific critiques
are presented in the order that they appear:

-   The paper has a good, thorough overview of previous work. The authors could
    clarify the relationship of this work to the work on Gap Navigation Trees,
    since it seems to build most directly on this.
-   Define earlier what it means for communication to be "limited" between
    robots, and what exactly a rendezvous is.
-   Define bitangent
-   terms such as "node obstacles" or "obstacle node" or "tree robot" are
    undefined and nonstandard (?)
-   the manipulation of the stack is not clearly specified. It is used to store
    both the obstacles assigned to all teams and the non-explored bitangents. It
    is not clear why a stack is the best data structure to store this
    information, or how checking properties such as the number of nonexplored
    obstacles in the stack is performed without losing other information stored
    in the stack. It seems that a more general "memory bank" would be more
    appropriate for this purpose. Also, in Table 1, it appears that the stack is
    referred to as a queue.
-   III E: how do the robots know when all robots have returned to the
    root node? The sensing model does not seem capable of doing this.
-   IV A: "not possible to distinguish two or more bitangents... thus
    the robots can only communicate at rendezvous" does not follow, the
    communication model is an assumption
-   IV B: robots can detect a (unique?) vertex index at each vertex in
    each obstacle, but it is not clear how this is used in the algorithm
-   VI: as the order of magnitude of the number of obstacles increases, it seems
    we should compare results with relatively more robots. The horizontal scale
    in Fig 7 (d) is not clear.



Small corrections
-----------------

The authors should have a native english speaker correct the paper - for
example, Section IV. B. is titled "Data estructure".

I also prefer the word "circumnavigate" or "completely explore" over "surround"
when talking about robots which traverse the entire boundary of an obstacle,
surround may be confused with having robots which can see all sides of an
obstacle.

-   III E: should "once the tree has reached at most a given height k" ->
    "exactly a given height k"? Otherwise they may return sooner.
-   IV B: needs clarification on what is stored in nodes, edges of tree
-   IV C: The notation N_c is used before being defined
-   VI: Tables need more descriptive title: what is being measured?
-   VI: Figure 7 needs bigger text, clearer legends

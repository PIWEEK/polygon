<TeXmacs|1.0.7.18>

<style|article>

<\body>
  <doc-data|<doc-title|PolygoN>>

  <section|Objective>

  Given <math|n> points on a <math|2-dimensional> plane, we need to build all
  possible simple closed polygons whose vertices are all <math|n> points
  given.

  <subsection|Definitions>

  <\definition>
    A Vector of Points <math|VP> is an ordered array of unique points in the
    form of <math|<around*|(|x,y|)>> where <math|x> represents the <math|x>
    dimension and <math|y> represents the <math|y> dimension. The order is
    such that for any given pair of consecutive points
    <math|<around*|(|x<rsub|n>,y<rsub|m>|)>,<around*|(|x<rsub|n+1>,y<rsub|m><rsub|>|)>
    x<rsub|n>\<less\>x<rsub|n+1>> and for any given pair of consecutive
    points <math|<around*|(|x<rsub|n>,y<rsub|m>|)>,<around*|(|x<rsub|n>,y<rsub|m+1>|)>y<rsub|m>\<less\>y<rsub|m+1>>.
  </definition>

  <\example>
    <math|VP = <around*|{|<around*|(|0,0|)>,<around*|(|1,3|)>,<around*|(|4,2|)>,<around*|(|4,3|)>,<around*|(|8,1|)>,<around*|(|9,7|)>|}>>

    <small-figure|<image|VPexample.png|350px|262px||>|<math|VP =
    <around*|{|<around*|(|0,0|)>,<around*|(|1,3|)>,<around*|(|4,2|)>,<around*|(|4,3|)>,<around*|(|8,1|)>,<around*|(|9,7|)>|}>>>
  </example>

  A point can be <math|0-connected>, <math|1-connected> or <math|2-connected>
  depending on the number of sides to which it is connected to. We can also
  say <math|0-connected> means \Sfree\T, <math|1-connected> means \Sopen\T
  and <math|2-connected> means \Sclosed\T. Therefore we can have free, open
  or closed points.

  \;

  A initial segment between any two <math|i,j> points from <math|VP> is said
  to be a line connecting those two points that does not intersect with any
  sides of the polygon. At the beginning, every pair of points <math|i,j> are
  connected by an initial segment. As the construction of the polygon
  progresses, some of these initial segments will be intersected by sides of
  the polygon and therefore erased.

  \;

  The Initial Segments Matrix <math|ISM> is a <math|n\<times\>n> matrix where
  <math|n> is the number of points given and for a given <math|ISM<rsub|i,j>
  i=VP<rsub|i> \<wedge\>j=VP<rsub|j>> we find a <math|0> if no initial
  segment still exists between those two <math|i,j> points and <math|1> if
  the initial segment still exists.

  \;

  Distance between two points is defined as follows. When there is a side of
  a polygon that connects two points, their distance is zero and they are
  said to be connected. When there is an initial segment not intersecting any
  existing side of the polygon, their distance is 1 and they are said to be
  linked. When two points are linked via a number of initial segments not
  intersecting and existing side of the polygon, their distance is the
  minimum number of initial segments that will connect the two points.

  \;

  The Distance Matrix is a matrix that represents for a given coordinate
  <math|x,y <around*|(|x,y \<subset\>P|)>> the distance
  <math|d<around*|(|x,y|)>> for the two points <math|x,y>.

  \;

  <section|Theorems>

  <\theorem>
    When a free point has distance 1 only to 1-connected or 2-connected
    points, that point is considered isolated and the polygon cannot be.
  </theorem>

  <section|Approach>

  A <math|2-connected> point immediately erases all initial segments
  connected to it.

  A new proposed side for a polygon can only be connected to a
  <math|1-connected >point if it is the only <math|1-connected> point
  remaining (ie: the first point).

  \;

  <subsection|Rules to discard impossible polygon>

  <\enumerate-numeric>
    <item>Check if there is only one <math|0-connected> points left. If the
    two <math|1-connected> points can be connected through this
    <math|0-connected> point, we store this as a valid polygon.

    <item>Check the status of the latest point connected to the polygon. This
    point has to have at least one initial segment with a <math|0-connected>
    point.

    <item>Check the status of the initial point. If there is at least one
    initial segment from a <math|0-connected> point connected to it, the
    polygon might still be.

    <item>If 3) is passed, check the status of all <math|0-connected> points
    to ensure they all have existing initial segments to at least one
    <math|1-connected> point and at least one <math|0-connected> or
    <math|1-connected> point.

    <item>If 4) is passed, check the status of all <math|1-connected> and
    <math|0-connected> points at any given side of the last segment. If at
    least one point from one side retains an initial segment to the other
    side, the polygon may still be.

    <item>If 5) is passed the polygon can still be. At this moment, this
    polygon is considered a polygon generator and can spawn a new exploring
    technique.
  </enumerate-numeric>

  \;

  <\with|font-series|bold>
    <label|docs-internal-guid-001c0da2-8708-c9cf-3122-50f47b8e5c11>If a point
    remains connected by initial segments to only 1-connected points, that
    point is considered isolated and the polygon cannot be.

    <next-line>

    Rules:

    <\enumerate>
      <item>check the status of the latest point connected to the polygon (at
      least 1 initial segment with a 0-connected point)

      <item>If 1) is OK, check the status of all 0-connected points (there is
      a 1-connected-free path using initial segments between the 0-connected
      point and some other 0/1-connected point. The exception to this rule is
      that there is only one 0-connected point left and there are initial
      segments to two 1-connected points

      <item>If 2) is OK, check the status of all 1-connected points

      <item>if 3) is OK, the polygon can still be
    </enumerate>
  </with>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|3|2>>
    <associate|auto-6|<tuple|3.1|2>>
    <associate|docs-internal-guid-001c0da2-8669-4c9e-9147-004cf410a071|<tuple|1|?|../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|docs-internal-guid-001c0da2-866b-796e-e4d6-9618b64d4468|<tuple|1.1|?|../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|docs-internal-guid-001c0da2-866f-005d-f483-f78b89a2fea2|<tuple|1.1|?|../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|docs-internal-guid-001c0da2-8708-c9cf-3122-50f47b8e5c11|<tuple|6|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<with|mode|<quote|math>|VP =
      <around*|{|<around*|(|0,0|)>,<around*|(|1,3|)>,<around*|(|4,2|)>,<around*|(|4,3|)>,<around*|(|8,1|)>,<around*|(|9,7|)>|}>>|<pageref|auto-3>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Objective>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|1.1<space|2spc>Definitions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Theorems>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Approach>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|3.1<space|2spc>Rules to discard impossible
      polygon <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>
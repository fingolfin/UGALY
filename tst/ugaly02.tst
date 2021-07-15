# UGALY, chapter 2
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST( "ugaly02.tst");

# doc/_Chapter_Preliminaries.xml:26-39
gap> G:=WreathProduct(SymmetricGroup(2),SymmetricGroup(3));
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(G);
false
gap> H:=AutBall(3,2);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(H);
true
gap> K:=LocalAction(3,2,G);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(K);
true

# doc/_Chapter_Preliminaries.xml:56-64
gap> G:=WreathProduct(SymmetricGroup(2),SymmetricGroup(3));
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(G);
false
gap> G:=LocalAction(3,2,G);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> IsLocalAction(G);

# doc/_Chapter_Preliminaries.xml:94-100
gap> F:=PHI(4,AlternatingGroup(4));
Group([ (1,5,7)(2,4,8)(3,6,9)(10,11,12), (1,2,3)(4,7,10)(5,9,11)(6,8,12), 
  (1,2,3), (4,5,6), (7,8,9), (10,11,12) ])
gap> LocalActionDegree(F);
4

# doc/_Chapter_Preliminaries.xml:117-123
gap> F:=PHI(4,AlternatingGroup(4));
Group([ (1,5,7)(2,4,8)(3,6,9)(10,11,12), (1,2,3)(4,7,10)(5,9,11)(6,8,12), 
  (1,2,3), (4,5,6), (7,8,9), (10,11,12) ])
gap> LocalActionRadius(F);
2

# doc/_Chapter_Preliminaries.xml:140-149
gap> a:=(1,3,5)(2,4,6);; a in AutBall(3,2);
true
gap> LocalAction(2,3,2,a,[]);
(1,3,5)(2,4,6)
gap> LocalAction(1,3,2,a,[]);
(1,2,3)
gap> LocalAction(1,3,2,a,[1]);
(1,2)

# doc/_Chapter_Preliminaries.xml:153-161
gap> b:=Random(AutBall(3,4));
(1,20,4,17,2,19,3,18)(5,22,8,23,6,21,7,24)(9,10)(13,16,14,15)
gap> LocalAction(2,3,4,b,[3,1]);
(1,4)(2,3)
gap> LocalAction(3,3,4,b,[3,1]);
Error, the sum of input argument r=3 and the length of input argument
addr=[ 3, 1 ] must not exceed input argument k=4

# doc/_Chapter_Preliminaries.xml:178-187
gap> F:=GAMMA(4,3,SymmetricGroup(3));
Group([ (1,16,19)(2,15,20)(3,13,18)(4,14,17)(5,10,23)(6,9,24)(7,12,22)
  (8,11,21), (1,9)(2,10)(3,12)(4,11)(5,15)(6,16)(7,13)(8,14)(17,21)(18,22)
  (19,24)(20,23) ])
gap> pr:=Projection(F,2);
<action homomorphism>
gap> a:=Random(F);; Image(pr,a);
(1,4,5)(2,3,6)

# doc/_Chapter_Preliminaries.xml:204-209
gap> AutBall(3,2);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> ImageOfProjection(AutBall(3,2),1);
Group([ (), (), (), (1,2,3), (1,2) ])

# doc/_Chapter_Preliminaries.xml:233-238
gap> G:=AutBall(3,2);
Group([ (1,2), (3,4), (5,6), (1,3,5)(2,4,6), (1,3)(2,4) ])
gap> Size(G);
48

# doc/_Chapter_Preliminaries.xml:262-268
gap> BallAddresses(3,1);
[ [  ], [ 1 ], [ 2 ], [ 3 ] ]
gap> BallAddresses(3,2);
[ [  ], [ 1 ], [ 2 ], [ 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 1 ], [ 2, 3 ], 
[ 3, 1 ], [ 3, 2 ] ]

# doc/_Chapter_Preliminaries.xml:285-288
gap> LeafAddresses(3,2);
[ [ 1, 2 ], [ 1, 3 ], [ 2, 1 ], [ 2, 3 ], [ 3, 1 ], [ 3, 2 ] ]

# doc/_Chapter_Preliminaries.xml:305-310
gap> AddressOfLeaf(3,2,1);
[ 1, 2 ]
gap> AddressOfLeaf(3,3,1);
[ 1, 2, 1 ]

# doc/_Chapter_Preliminaries.xml:327-334
gap> LeafOfAddress(3,2,[1,2]);
1
gap> LeafOfAddress(3,2,[3]);
5
gap> LeafOfAddress(3,2,[]);
1

# doc/_Chapter_Preliminaries.xml:351-356
gap> ImageAddress(3,2,(1,2),[1,2]);
[ 1, 3 ]
gap> ImageAddress(3,2,(1,2),[1]);
[ 1 ]

# doc/_Chapter_Preliminaries.xml:373-378
gap> ComposeAddresses([1,3],[2,1]);  
[ 1, 3, 2, 1 ]
gap> ComposeAddresses([1,3,2],[2,1]);
[ 1, 3, 1 ]

#
gap> STOP_TEST("ugaly02.tst", 1 );

# UGALY, chapter 5
#
# DO NOT EDIT THIS FILE - EDIT EXAMPLES IN THE SOURCE INSTEAD!
#
# This file has been generated by AutoDoc. It contains examples extracted from
# the package documentation. Each example is preceded by a comment which gives
# the name of a GAPDoc XML file and a line range from which the example were
# taken. Note that the XML file in turn may have been generated by AutoDoc
# from some other input.
#
gap> START_TEST( "ugaly05.tst");

# doc/_Chapter_Discreteness.xml:34-39
gap> G:=GAMMA(3,SymmetricGroup(3));
Group([ (1,4,5)(2,3,6), (1,3)(2,4)(5,6) ])
gap> SatisfiesD(G);
true

# doc/_Chapter_Discreteness.xml:56-61
gap> G:=GAMMA(3,SymmetricGroup(3));
Group([ (1,4,5)(2,3,6), (1,3)(2,4)(5,6) ])
gap> IsDiscrete(G);
true

# doc/_Chapter_Discreteness.xml:65-76
gap> F:=LocalAction(3,2,Group((1,2)));
Group([ (1,2) ])
gap> IsDiscrete(F);
true
gap> SatisfiesD(F);
false
gap> C:=MaximalCompatibleSubgroup(F);
Group(())
gap> SatisfiesD(C);
true

# doc/_Chapter_Discreteness.xml:99-109
gap> F:=LocalAction(3,1,AlternatingGroup(3));;
gap> InvolutiveCompatibilityCocycle(F);
MappingByFunction( Domain([ [ (), 1 ], [ (), 2 ], [ (), 3 ], [ (1,3,2), 1 ], 
  [ (1,3,2), 2 ], [ (1,3,2), 3 ], [ (1,2,3), 1 ], [ (1,2,3), 2 ], 
  [ (1,2,3), 3 ] ]), Alt( [ 1 .. 3 ] ), function( s ) ... end )
gap> a:=Random(AlternatingGroup(3));; dir:=Random([1..3]);;
gap> a; Image(z,[a,dir]);
(1,3,2)
(1,3,2)

# doc/_Chapter_Discreteness.xml:113-123
gap> G:=GAMMA(3,AlternatingGroup(3));
Group([ (1,4,5)(2,3,6) ])
gap> InvolutiveCompatibilityCocycle(G);
MappingByFunction( Domain([ [ (), 1 ], [ (), 2 ], [ (), 3 ], 
  [ (1,5,4)(2,6,3), 1 ], [ (1,5,4)(2,6,3), 2 ], [ (1,5,4)(2,6,3), 3 ], 
  [ (1,4,5)(2,3,6), 1 ], [ (1,4,5)(2,3,6), 2 ], [ (1,4,5)(2,3,6), 3 ] 
 ]), Group([ (1,4,5)(2,3,6) ]), function( s ) ... end )
gap> InvolutiveCompatibilityCocycle(AutBall(3,2));
fail

# doc/_Chapter_Discreteness.xml:139-145
gap> S3:=LocalAction(3,1,SymmetricGroup(3));;
gap> Size(AllInvolutiveCompatibilityCocycles(S3));
4
gap> Size(AllInvolutiveCompatibilityCocycles(GAMMA(3,SymmetricGroup(3))));
1

#
gap> STOP_TEST("ugaly05.tst", 1 );

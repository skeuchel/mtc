#!/bin/bash

function coqwc2 () {
  cat $* | coqwc | tail -n 1 | awk '{print ($1+$2)}'
}

FRAMEWORK="FJ_tactics.v Functors.v"
TYPESAFETY="Names.v PNames.v"
FEATURES="Arith_Lambda.v Arith.v Bool_Lambda.v Bool.v Lambda.v Mu.v NatCase.v"
COMPOSITION="MiniML.v test_ABL.v test_AB.v test_AL.v test_A.v test_BL.v"

echo "FRAMEWORK        " $(coqwc2 $FRAMEWORK   2> /dev/null)
echo "TYPESAFETY       " $(coqwc2 $TYPESAFETY  2> /dev/null)
echo "FEATURES         " $(coqwc2 $FEATURES    2> /dev/null)
echo "COMPOSITION      " $(coqwc2 $COMPOSITION 2> /dev/null)

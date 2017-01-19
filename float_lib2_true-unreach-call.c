extern void __VERIFIER_error(void);
/*
** largestSubnormalFloat.c
**
** Martin Brain
** martin.brain@cs.ox.ac.uk
** 25/07/12
**
*/

#include <math.h>

int main (void)
{
  #ifdef __GNUC__
  float largestSubnormalFloat = 0x1.fffffcp-127f;

  if(!(fpclassify(largestSubnormalFloat) != FP_NAN)) __VERIFIER_error();//0
  if(!(fpclassify(largestSubnormalFloat) != FP_INFINITE)) __VERIFIER_error();//1
  if(!(fpclassify(largestSubnormalFloat) != FP_ZERO)) __VERIFIER_error();//2
  if(!(fpclassify(largestSubnormalFloat) != FP_NORMAL)) __VERIFIER_error();//4
  if(!(fpclassify(largestSubnormalFloat) == FP_SUBNORMAL)) __VERIFIER_error();//3

  if(!(__fpclassifyf(largestSubnormalFloat) == FP_SUBNORMAL)) __VERIFIER_error();//3

  char b = isnormal(largestSubnormalFloat);

  if(!(!b)) __VERIFIER_error();//4
  #endif

  return 0;
}

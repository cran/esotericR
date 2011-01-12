/* 
  esotericR_rev.c
  
  Copyright 2011 lemnica, corp.
  Distributed under GPL >=2
*/

#include <R.h>
#include <Rinternals.h>

SEXP esoteric_rev (SEXP x) {
  SEXP res;
  int i, r, P=0;
  PROTECT(res = allocVector(REALSXP, length(x))); P++;
  
  for(i=length(x), r=0; i>0; i--, r++) {
    REAL(res)[r] = REAL(x)[i-1];
  }
  
  copyMostAttrib(x, res);
  UNPROTECT(P);
  return res;
}


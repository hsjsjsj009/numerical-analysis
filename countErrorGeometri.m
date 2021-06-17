function countErrorGeometri(a1,a2,n,nmax)
  calcExact = 0.8/(2^(n-1));
  if n > nmax 
    return
  endif
  if n == 1
    printf("error atopi-%d = %d\n",n,abs(a1-calcExact))
    countErrorGeometri(a1,a2,n+1,nmax)
    return
  endif
  if n == 2
    printf("error atopi-%d = %d\n",n,abs(a2-calcExact))
    countErrorGeometri(a1,a2,n+1,nmax)
    return
  endif
  calc = 2.5*a2 - a1;
  printf("error atopi-%d = %d\n",n,abs(calc-calcExact))
  countErrorGeometri(a2,calc,n+1,nmax)
  return
endfunction


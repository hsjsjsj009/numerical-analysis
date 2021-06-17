function geometriRec(a1,a2,n,nmax)
  if n > nmax 
    return
  endif
  if n == 1
    printf("atopi-%d = %d\n",n,a1)
    geometri(a1,a2,n+1,nmax)
    return
  endif
  if n == 2
    printf("atopi-%d = %d\n",n,a2)
    geometri(a1,a2,n+1,nmax)
    return
  endif
  calc = 2.5*a2 - a1;
  printf("atopi-%d = %d\n",n,calc)
  geometri(a2,calc,n+1,nmax)
  return
endfunction

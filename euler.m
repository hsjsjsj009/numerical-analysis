function ynew = euler(y0,x0, ya, h, max_iter)
  for i=1:max_iter
    y0 = y0+h*ya(x0,y0)
    x0 = x0 + h;
  endfor
  ynew = y0;
endfunction

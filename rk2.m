function ynew = rk2(y0,x0, ya, h, max_iter)
  for i=1:max_iter
    k1 = ya(x0,y0)
    k2 = ya(x0+h, y0+h*k1)
    y0 = y0 + h*(0.5*k1 + 0.5*k2)
    x0 = x0 +h;
  endfor
  ynew = y0;
endfunction

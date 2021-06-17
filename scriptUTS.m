geometri(2)
geometri(2)
geometri(0.8,0.4,1,2)
clear
geometri(0.8,0.4,1,2)
geometri(0.8,0.4,1,50)
geometri(0.8,0.4,1,50)
geometri(50)
geometri(50)
countErrorGeometri(0.8,0.4,1,50)
countErrorGeometri(0.8,0.4,1,50)
2&-52
2^-52
f = @(x) 1/(1+10*x*x)
f(-1)
f(0)
f(1)
x = -1:0.01:1
plot(x,f(x)) 
x
for i=-1:0.01:1
A = [1 -1 1;1 0 0;1 1 1]; b = [0.090909;1;0.090909]
x = R\b
x = A\b
p = @(x) 1-0.90909*x^2
err(1) = abs(p(-1)-f(-1))
err(1) = abs(p(0)-f(0))
err(1) = abs(p(1)-f(1))
err(1) = abs(p(-1)-f(-1))
err(2) = abs(p(0)-f(0))
err(3) = abs(p(1)-f(1))
for i=-1:0.01:1
p(-1:0.01:1)
length(-1:0.01:1)
n = 1
for i=-1:0.01:1
y(n) = p(i);
n = n+1;
endfor
y
x
x = -1:0.01:1
plot(x,y)
n = 1
for i=-1:0.01:1
y(n) = f(i);
n = n+1;
endfor
plot(x,y)
s = []
s = 1:100
for i=0:100
s(i+1) = -1+i/50;
endfor
s
for i=0:100
A = zeros(101,101);
for i=0:100
for j=1:100
for i=0:100
for j=1:101
for i=0:100
A(i,1) = 1;
for j=2:101
for i=1:101
A(i,1) = 1;
for j=2:101
A(i,j) = s(i)^(j-1);
endfor
endfor
A
A(1:5,1:5)
 for i=0:100
s(i+1) = -1+i/50;
for i=0:100
s(i+1) = -1+i/50;
endfor
for i=0:100
A(i,1) = 1;
for j=2:101
for i=1:101
A(i,1) = 1;
for j=2:101
A(i,j) = s(i)^(j-1);
endfor
endfor
for i=1:101
b(i) = f(s(i));
endfor
solusi = A\b';
solusi = A\b;
A
s(2)
b
A\b
solusi = A\b
solusi = A\b;
solusi = A\b;
mypol(-1)
mypol(-1)
1/11
A
A\b
mypol(-1)
  for i=1:101
    A(i,1) = 1;
    for j=2:101
      A(i,j) = s(i)^(j-1);
    endfor
  endfor
  for i=0:100
    s(i+1) = -1+i/50;
  endfor 
  A = zeros(101,101);
  for i=1:101
    A(i,1) = 1;
    for j=2:101
      A(i,j) = s(i)^(j-1);
    endfor
  endfor
for i=1:101
    b(i) = f(s(i));
  endfor
  solusi = A\b;
A(1,:)
A\b;
solusi = A\b;
mypol(-1)
mypol(-1)
mypol(-1)
solusi
function ret = mypol(x)
ret = 0;
  for i=1:101
    ret = ret + b(i)*x^(i-1);
  endfor
endfunction
mypol(-1)
b
function ret = mypol(x)
mypol(-1)
mypol.m(-1)
mypol.m
mypol1(-1)
for i=1:101
for i=1:101
yf(i) = f(s(i));
ypol(i) = mypol(s(i));
endfor
for i=1:101
for i=1:101
yf(i) = f(s(i));
ypol(i) = mypol1(s(i));
endfor
norm(ypol-yf)
for i=1:101
for i=-1:1
for i=-1:0.01:1
n = 1
for i=-1:0.01:1
y(n) = mypol(i);
endfor
for i=-1:0.01:1
y(n) = mypol1(i);
endfor
plot(x,y)
plot(x,y)
for i=-1:0.01:1
y(n) = mypol1(i);
n = n+1;
endfor
plot(x,y)
for t=0:48
A = [1 0 0;1 1 0;1 2 2]
b = [0.090909;1;0.090909]
A\b
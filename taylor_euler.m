c1 = 1;
c2 = 1;
c3 = 0;
v = 0;
tay = 2;
eul = 2;
  
printf('Second order Taylor method:');
  
for x = 0:0.2:3
    
  if (x!=0) 
    f = tay + 0.2 * ((tay + (x-0.2)^2 -2)/(x -0.2 +1)) + 0.02* ((2*(x-0.2))/((x-0.2)+1));
    tay = f;  
  endif
    
  printf('y%d = %f\n',c1, tay);
  c1 = c1 + 1;  
  plot(x,tay,'*');
  hold on
    
endfor
  
printf('Euler method:');
  
for x = 0:0.2:3
    
  if (x!=0)
    f = eul + 0.2*((eul + ((x-0.2))^2 -2)/(((x-0.2))+1));
    eul = f;  
  endif
    
  printf('y%d = %f\n',c2,eul);
  c2 = c2 + 1;
  plot(x,eul,'^');
  hold on
    
endfor
  
printf('Exact solution:');
  
for x = 0:0.2:3
    
  if(x!=0)
    f = x^2 + 2*x + 2 - (2*(x + 1))*log(x + 1);
  else
    f = 2;
  endif  
    
  printf('y(x%d) = %f\n',c3,f);
  c3 = c3 + 1;
  fplot( @(x) x.^2 + 2*x + 2 -2*(x+1).*log(x+1) , [0,3]); %
  hold on
  
endfor
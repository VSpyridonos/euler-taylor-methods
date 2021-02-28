c1 = 0;
c2 = 0;
c3 = 0;
c4 = 0;
eul = 1;
tEul = 1;
bEul = 1;
  
printf('Euler method:');
  
for x = 0:0.2:10
    
  if (x!=0)
    f = eul + 0.2*((x-0.2)/eul);
    eul = f;  
  endif
    
  printf('y%d = %f\n',c1,eul);
  c1 = c1 + 1;
  plot(x,eul,'^');
  hold on
    
endfor
  
printf('Modified Euler method:');
  
for x = 0:0.2:10
    
  if (x!=0)
    f = tEul + 0.2*((x - 0.1)/(tEul + 0.1*((x-0.2)/tEul)));
    tEul = f;  
  endif
    
  printf('y%d = %f\n',c2,tEul);
  c2 = c2 + 1;
  plot(x,tEul,'*');
  hold on
    
endfor
  
printf('Improved Euler method:');
   
for x = 0:0.2:10
    
  if (x!=0)
    f = bEul + 0.1*((x-0.2)/bEul) + 0.1*(x/(bEul + 0.2*((x-0.2)/bEul)));
    bEul = f;  
  endif
    
  printf('y%d = %f\n',c3,bEul);
  c3 = c3 + 1;
  plot(x,bEul,'s');
  hold on
    
endfor  
  
printf('Exact solution:');
  
for x = 0:0.2:10
    
  if(x!=0)
    f = sqrt(x^2 + 1);
  else
    f = 1;
  endif  
    
  printf('y(x%d) = %f\n',c4,f);
  c4 = c4 + 1;
  fplot( @(x) sqrt(x.^2 + 1) , [0,10]); %
  hold on
    
endfor
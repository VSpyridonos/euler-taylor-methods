c1 = 0;
c2 = 0;
c3 = 0;
c4 = 0;
eul = 0;
tEul = 0;
bEul = 0;
  
printf('Euler method:');
  
for x = 0:0.1:3
    
  if (x!=0)
    f = eul + 0.1*(x-0.1) + 0.1*eul;
    eul = f;  
  endif
    
  printf('y%d = %f\n',c1,eul);
  c1 = c1 + 1;
  plot(x,eul,'^');
  hold on
    
endfor
  
printf('Modified Euler method:');
  
for x = 0:0.1:3
    
  if (x!=0)
    f = tEul*1.105 + (x-0.1)*0.105 + 0.005;
    tEul = f; 
  endif
    
  printf('y%d = %f\n',c2,tEul);
  c2 = c2 + 1;
  plot(x,tEul,'*');
  hold on
    
endfor
  
printf('Improved Euler method:');
   
for x = 0:0.1:3
    
  if (x!=0)
    f = bEul*1.105 + (x-0.1)*0.105 + 0.005;
    bEul = f;  
  endif
    
  printf('y%d = %f\n',c3,bEul);
  c3 = c3 + 1;
  plot(x,bEul,'s');
  hold on
    
endfor  
  
printf('Exact solution:');
  
for x = 0:0.1:3
    
  if(x!=0)
    f = e^x -x -1;
  else
    f = 0;
  endif  
    
  printf('y(x%d) = %f\n',c4,f);
  c4 = c4 + 1;
  fplot( @(x) e.^x -x -1 , [0,3]); %
  hold on
endfor
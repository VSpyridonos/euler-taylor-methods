function [] = calculate_errors ()
  
  eul = 1;
  tEul = 1;
  bEul = 1;
  error1 = 0;
  error2 = 0;
  error3 = 0;
  
  
  for x = 0:0.2:10
    
    if (x!=0)
      f = eul + 0.2*((x-0.2)/eul);
      eul = f;  
      g = sqrt((x+0.2)^2 + 1);
    else
      g = 1;
    endif
    sfalma1 = g - eul;
    plot(x,error1,'^');
    hold on
    
  endfor
  
  
  for x = 0:0.2:10
    
    if (x!=0)
      f = tEul + 0.2*((x - 0.1)/(tEul + 0.1*((x-0.2)/tEul)));
      tEul = f;
      g = sqrt((x+0.2)^2 + 1);
    else
      g = 1;
    endif
    sfalma2 = g - tEul;
    plot(x,error2,'*');
    hold on
    
  endfor
  
   
  for x = 0:0.2:10
    
    if (x!=0)
      f = bEul + 0.1*((x-0.2)/bEul) + 0.1*(x/(bEul + 0.2*((x-0.2)/bEul)));
      bEul = f;  
      g = sqrt((x+0.2)^2 + 1);
    else
      g = 1;
    endif
    sfalma3 = g - bEul;
    plot(x,error3,'s');
    hold on
    
  endfor

endfunction
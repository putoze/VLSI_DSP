u = [1 2 3 4];
v = [1 2 3];
result = conv(u,v,'same');
disp(result);
result = conv(u,v);
disp(result);
u_ex  = [2 1 2 3 4];
result2 = conv(u_ex,v);
disp(result2);
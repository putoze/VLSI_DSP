clc;clear;
%%% -------------- Hw 1 ------------------  
A = [
 15,-13, 20, -8;
 -5,-15, -4, -4; 
-17, 16, -2,  9; 
 10,-19,-14,-15;
 -7,  8, -7, 15;
 14, 10, -8,-17; 
 -5, -3, 16, -2;
 13, -5,-10,-19];

b = [ 
 13;
 10;
-15; 
  9;
  3; 
 18; 
  3; 
 20];

%%% part 1 
% a)
x_head = pinv(A)*b;

% b)
[Q,R] = qr(A);
%%% R*x_head = Q'*b
x_head_qr = inv(R' * R) * R' * Q' * b;

%%% disp
disp('Pseudo inverse');
disp(x_head);
disp('qr decomposition');
disp(x_head_qr);

%%% part 2
 M  = [ -2,  16,  -6, -16,   3,  15,  -6, -19;
        16, -17,  10,  -2,   7,   8,   3,   5;
        -6,  10,  15,  -1, -15, -18,   9,  -8;
       -16,  -2,  -1,   9,   0,   0,   0,  18;
         3,   7, -15,   0,  14,  19, -12,  11;
        15,   8, -18,   0,  19,  10,  -8, -17;
        -6,   3,   9,   0, -12,  -8,  15,  20;
       -19,   5,  -8,  18,  11, -17,  20,  20];
%%% -------------- Hw 2 ------------------  
%%% part 1
%tri‐diagonal
display(M);
% golden answer
[EV,DV] = eig(M);
disp('Golden_answer_V:');
disp(EV);
disp('Golden_answer_D:');
disp(DV);
for i=1:1000
% Tridiagoanl Matrix:
    [Q,R] = tri_diagonal_givens_rotation(M);
    %disp(R);
    M_tri = Q'*M*Q;
    %disp('Tri-diagonal:')
    %disp(M);
    [q1,r1] = qr(M_tri);
    M = r1*q1;
end
disp('Iteration_method:')
disp(M);


% QR_Decomposition
function [Q,R] = tri_diagonal_givens_rotation(A)
    [m,n] = size(A);
    Q = eye(m); %Identity Matrix
    R = A;
    for j = 1:n
        for i = (m):-1:(j+2)
            G = eye(m);
            if R(i-1,j) < 0
                for rev = j:n
                    R(i-1,rev) = -R(i-1,rev);
                    R(i  ,rev) = -R(i  ,rev);
                end
            end
            [c,s] = GivensRotation( R(i-1,j),R(i,j) );
            G([i-1, i],[i-1, i]) = [c -s; s c];
            R = G'*R;       
            Q = Q*G;
        end
    end
end

function [c,s] = GivensRotation(a,b)
    if b == 0
        c = 1;
        s = 0;
    else
        if abs(b) > abs(a)
            r = a / b;
            s = 1 / sqrt(1 + r^2);
            c = s*r;
        else
            r = b / a;
            c = 1 / sqrt(1 + r^2);
            s = c*r;
        end
    end
end

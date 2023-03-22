syms s Fe
 %% Sistema apresentado na aula 7
A = [(s^2 +3*s + 1) -(3*s + 1); -(3*s + 1) (s^2 +4*s + 1)];
B = [Fe; 0];
X = inv(A)*B;

X1 = X(2)/Fe;

[n,d] = numden(X1);

sys = tf(sym2poly(n),sym2poly(d));
%step(sys,4);
%hold all;
impulse(sys);

%%
A = [(s^2 + 6*s + 9) -(3*s + 5); -(3*s + 5) (2*s^2 +5*s + 5)];
B = [0; Fe];
X = inv(A)*B;

X1 = X(2)/Fe;

[n,d] = numden(X1);

sys = tf(sym2poly(n),sym2poly(d));
step(sys,4);
hold all;
impulse(sys);

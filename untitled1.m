syms s Ve
A = [2 -1;-1 (s + 1/(2*s) + 1)];
B = [Ve;0];
X = inv(A)*B;
S= tf([1], [4 2 2]);
step(S);
hold on
impulse(S);

%%

A = [(2*s + 2) -2; -2 (2*s + 4)];
X = inv(A)*B;

%%

A =[(2 + 2*s) (-2*s-1) (-1); (-2*s -1) (9*s + 1) (-4*s); (-1) (-4*s) (1/s +4*s +1)];
B = [Ve;0;0];

X = inv(A)*B;
pretty(X(2));

%%
A= [(1+s) (-s) (-1); (-s) (2*s +1) (-1); (-1) (-1) (s+2)];
B = [Ve;0;0];
X = inv(A)*B;
pretty(X);

S = tf([1 2 1], [1 5 2]);
step(S);
E = S;
hold on
impulse(E);

%%
syms Fe
A = ([(s^2 + s + 1) -(s+1); -(s+1) (s^2 + s +1)]);
B = [Fe;0];
X = inv(A)*B;
pretty(X)

S = tf([1 1], [1 2 2 0 0]);
step(S);
hold on
impulse(S);
[u,t] = gensig("sine",1,4,0.05);
figure
lsim(S,u,t);



%%
g1 = tf([1],[1 7 0]);
rlocus(g1);

%% 
t1 = feedback(45.7*g1,1);
step(t1)

%%
g2 = tf([1 10], poly([-25.09, 0, -7]));
rlocus(g2)

%%
t2 = feedback(455*g2,1);
step(t2);

%% %%
g1 = tf([1 1], [1 0 0]);
rlocus(g1);

%%
t1 = feedback(t1,1);
step(t1)
%%
s = -2.3995 + 4.1560i;
angle(s+1)*180/pi
angle(s)*180/pi

%%
g2 = tf([1 1],poly([0, 0 ,-6.76]));
rlocus(g2);

%%
t2 = feedback(37.5*g2,1);
step(t2);
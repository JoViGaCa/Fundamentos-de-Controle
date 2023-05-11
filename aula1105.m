sys = tf([1],[1 13 32 20]);
sys = feedback(163*sys,1);
figure(1)
rlocus(sys);

figure(2)
step(sys);
hold all

%%
sys2 = tf([1 0.1],[1 13 32 20 0]);
sysstep = feedback(157*sys2,1);

figure(1)
rlocus(sys2);

figure(2)
step(sysstep);

%%
sys3 = tf([1], [1 12 21 10]);
figure(1)
rlocus(sys3);
sys3 = feedback(13.6*sys3,1);
figure(3)
step(sys3);
hold all

sys3 = tf([1 0.1], [1 12 21 10 0]);
figure(2)
rlocus(sys3);
sys3 = feedback(13.6*sys3,1);
figure(3)
step(sys3);

%% 
sys4 = tf(1,[1 13 32 20]);
%rlocus(sys4);

sys4 = tf([1 0.11], [1.0000   13.0100   32.1300   20.3200    0.2000]);
sys4 = feedback(sys4,1);
rlocus(sys4);



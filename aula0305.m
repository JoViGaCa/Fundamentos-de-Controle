num = [1 2];
den = [1 4 13];
k = 15;

sys = tf(k*num, den);
sys1 = tf(num, den);
sys = feedback(sys,1);
figure(1)
step(sys);
figure(2)
rlocus(sys1);
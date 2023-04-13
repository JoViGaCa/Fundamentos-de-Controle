sys1 = tf(1/5,[1 2/5 4]);
sys2 = tf(1/5,[1 2/5 4]);
step(sys,2*sys2); 

%%
sys2 = tf(25,[1 5 25]);
sys3 = tf(18.57, [1 5 18.57]);
step(sys2,sys3);

%%
sys4 = tf(16,[1 5.52 16]);
step(sys4)
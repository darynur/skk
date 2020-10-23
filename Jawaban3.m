z = ureal('z',1,'range',[0.1,0.2]);
w = ureal('w',1,'range',[90,110]);
sys2 = tf(w^2,[1 2*z*w w^2]);
sys1 = tf(1,[1 1]);
L = sys1*sys2;
C = 1;
S = 1/1+L;
T = L/1+L;
loops = loopsens(T,C);
Wh = makeweight(0.4,3,15);
wl = makeweight(10,10,.20);
%bode(loops.So,'r', loops.To,'b')
figure(1)
bodemag(Wh,loops.So)
figure(2)
bodemag(wl,loops.To)
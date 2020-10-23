T1 = ureal('T1',1,'range',[0,0.2]);
T2 = ureal('T2',1,'range',[2,2.5]);
sys1 = tf(1,[T1 1]);
sys2 = tf(1,[T2 1]);
L = sys1*sys2;
C = 1;
S = 1/1+L;
T = L/1+L;
loops = loopsens(T,C);
Wh = makeweight(0.4,0.1,10);
wl = makeweight(10,10,.20);
%bode(loops.So,'r', loops.To,'b')
figure(1)
bodemag(Wh,loops.So)
figure(2)
bodemag(wl,loops.To)
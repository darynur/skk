d = ureal('d',1,'range',[0,0.1]);
L = tf(1,[1 1],'InputDelay',0.1);
%A = makeweight(0.1,5,0);
S = 1/1+L;
T = L/1+L;
loops = loopsens(T,1);
Wh = makeweight(0.4,10,10);
wl = makeweight(10,10,.20);
%bode(loops.So,'r', loops.To,'b')
figure(1)
bodemag(Wh,loops.So)
figure(2)
bodemag(wl,loops.To)
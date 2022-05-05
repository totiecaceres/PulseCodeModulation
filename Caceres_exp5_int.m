figure(1)
m=1.5;
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi*t;
y=a1*cos(f1*n)+a2*cos(f2*n)+a3*sin(f3*n)+a4*sin(f4*n);

j=1;
b=8;

r=max(quanti)-min(quanti);
delta=r/(2^b);

if j==1			%For Round-Off Method use meth=1
quanti=delta.*round(y/delta);
endif
if j==2			%For Truncation Method use meth=2
quanti=delta.*fix(y/delta);
endif

a=0:delta:r;

if mod(length(a),2)==1
qm=length(a)+1;
part=[min(quanti)-delta/2:delta:max(quanti)+delta/2];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized
qm
subplot(2,1,1)
plot(t,y,'b');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('sampled signal @fs=1.5*fmax  Using Round-off');
subplot(2,1,2)
stairs(t,q,'r');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('quantized signal @fs=1.5*fmax Using Round-off');

figure(2)
m=2;
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi*t;
y=a1*cos(f1*n)+a2*cos(f2*n)+a3*sin(f3*n)+a4*sin(f4*n);

j=1;
b=8;

r=max(quanti)-min(quanti);
delta=r/(2^b);

if j==1			%For Round-Off Method use meth=1
quanti=delta.*round(y/delta);
endif
if j==2			%For Truncation Method use meth=2
quanti=delta.*fix(y/delta);
endif

a=0:delta:r;

if mod(length(a),2)==1
qm=length(a)+1;
part=[min(quanti)-delta/2:delta:max(quanti)+delta/2];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized
qm
subplot(2,1,1)
plot(t,y,'b');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('sampled signal @fs=2*fmax  Using Round-off');
subplot(2,1,2)
stairs(t,q,'r');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('quantized signal @fs=2*fmax  Using Round-off');

figure(3)
m=8;
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi*t;
y=a1*cos(f1*n)+a2*cos(f2*n)+a3*sin(f3*n)+a4*sin(f4*n);

j=1;
b=8;

r=max(quanti)-min(quanti);
delta=r/(2^b);

if j==1			%For Round-Off Method use meth=1
quanti=delta.*round(y/delta);
endif
if j==2			%For Truncation Method use meth=2
quanti=delta.*fix(y/delta);
endif

a=0:delta:r;

if mod(length(a),2)==1
qm=length(a)+1;
part=[min(quanti)-delta/2:delta:max(quanti)+delta/2];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized
qm
subplot(2,1,1)
plot(t,y,'b');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('sampled signal @fs=8*fmax  Using Round-off');
subplot(2,1,2)
stairs(t,q,'r');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('quantized signal @fs=8*fmax  Using Round-off');
figure(4)
m=1.5;
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi*t;
y=a1*cos(f1*n)+a2*cos(f2*n)+a3*sin(f3*n)+a4*sin(f4*n);

j=2;
b=8;

r=max(quanti)-min(quanti);
delta=r/(2^b);

if j==1			%For Round-Off Method use meth=1
quanti=delta.*round(y/delta);
endif
if j==2			%For Truncation Method use meth=2
quanti=delta.*fix(y/delta);
endif

a=0:delta:r;

if mod(length(a),2)==1
qm=length(a)+1;
part=[min(quanti)-delta/2:delta:max(quanti)+delta/2];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized
qm
subplot(2,1,1)
plot(t,y,'b');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('sampled signal @fs=1.5*fmax  Using Truncation');
subplot(2,1,2)
stairs(t,q,'r');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('quantized signal @fs=1.5*fmax Using Truncation');

figure(5)
m=2;
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi*t;
y=a1*cos(f1*n)+a2*cos(f2*n)+a3*sin(f3*n)+a4*sin(f4*n);

j=2;
b=8;

r=max(quanti)-min(quanti);
delta=r/(2^b);

if j==1			%For Round-Off Method use meth=1
quanti=delta.*round(y/delta);
endif
if j==2			%For Truncation Method use meth=2
quanti=delta.*fix(y/delta);
endif

a=0:delta:r;

if mod(length(a),2)==1
qm=length(a)+1;
part=[min(quanti)-delta/2:delta:max(quanti)+delta/2];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized
qm
subplot(2,1,1)
plot(t,y,'b');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('sampled signal @fs=2*fmax  Using Truncation');
subplot(2,1,2)
stairs(t,q,'r');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('quantized signal @fs=2*fmax  Using Truncation');

figure(6)
m=8;
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi*t;
y=a1*cos(f1*n)+a2*cos(f2*n)+a3*sin(f3*n)+a4*sin(f4*n);

j=2;
b=8;

r=max(quanti)-min(quanti);
delta=r/(2^b);

if j==1			%For Round-Off Method use meth=1
quanti=delta.*round(y/delta);
endif
if j==2			%For Truncation Method use meth=2
quanti=delta.*fix(y/delta);
endif

a=0:delta:r;

if mod(length(a),2)==1
qm=length(a)+1;
part=[min(quanti)-delta/2:delta:max(quanti)+delta/2];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[(-qm/2):1:(qm/2)];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized
qm
subplot(2,1,1)
plot(t,y,'b');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('sampled signal @fs=8*fmax  Using Truncation');
subplot(2,1,2)
stairs(t,q,'r');grid on;
xlabel('Time --->');
ylabel('amplitude');
title('quantized signal @fs=8*fmax  Using Truncation');
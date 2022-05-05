%Sampling Process
function y=samp(m);	
f1=100; a1=3; f2=400; a2=4.5; f3=700; a3=2.2; f4=1000; a4=1.5;
fm=f4;
fs=m*fm;
t0=0.01;
t=0:1/fs:t0;
n=2*pi.*t;
y=a1.*cos(f1*n)+a2.*cos(f2*n)+a3.*sin(f3*n)+a4.*sin(f4*n)
%plot(t,y);grid on;
%xlabel('Time --->');
%ylabel('amplitude');
endfunction
%Quantizing Process
function q=quant(b,meth) ;
% Selection Method
r=max(y)-min(y);
delta=r/2^b;
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
code=[-qm/2:1:qm/2];
[ind,quantized]=quantiz(y,part,code);
endif

if mod(length(a),2)==0
qm=length(a);
part=[min(quanti):delta:max(quanti)];
code=[-qm/2:1:qm/2];
[ind,quantized]=quantiz(y,part,code);
endif
q = quantized;
qm;
%plot(t,q);grid on;
%xlabel('Time --->');
%ylabel('amplitude');
endfunction
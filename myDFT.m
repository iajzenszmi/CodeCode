%:function [y,W]=myDFT(x,N)
%
% Author: M.Asif Khan mak4086@gmail.com

%Following code is meant to perform N point Discrete Fourier Transform
%   of input signal x.
%Maximum value of N is equal to signal length.
%
% To run the code execute following on command window:
% 
%x=[1 2 1 3 4 5 6 7 8]
%N=8
%[y,W]=myDFT(x,N)
%
%y: DFT of x
%W: DFT matrix of order N
    x=[1 2 1 3 4 5 6 7 8]
    N=8
    y=zeros(1,N);
    j=sqrt(-1);
    for i=0:N-1
        for k=0:N-1
            W(i+1,k+1)=exp(-j*2*pi*i*k/N);
            y(i+1)=y(i+1)+x(k+1)*W(i+1,k+1);
            
        end
    end
    disp('The DFT sequence is');
    disp(y);
     t=0:N-1;
    subplot(2,1,1);stem(t,abs(y));title('Magnitude Spectrum');xlabel('k');ylabel('Magnitude');
    subplot(2,1,2);stem(t,angle(y));title('Phase Spectrum');xlabel('k');ylabel('Phase');
    
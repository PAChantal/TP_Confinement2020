function X=bandf(X,Fc1,Fc2);
X=X-mean(X');
%figure(1),plot(X)
[B] = fir1(32,Fc1,'low');
XX=filtfilt(B,1,X);
X = resample(XX,1,2);
X = resample(X,1,2);
%X = resample(X,1,2);
%X = resample(X,1,2);
[B1] = fir1(8,Fc2*4,'low');
XXX=filtfilt(B1,1,X);
X = resample(XXX,2,1);
%X = resample(X,2,1);
%X = resample(X,2,1);
X = resample(X,2,1);
[n,N]=size(XX)
X=XX-X(:,1:N);
% figure(9),plot(X)
% FC1=0
% FC2=0.5
% figure(10),
% [PP,F]=psd(XX,256);
% subplot(3,1,1);plot((0:2/256:1), PP/256/2),xlabel('FrequencyY111 (Hz)'),
% set(gca,'Xlim',[FC1 FC2])
% [PP,F]=psd(XXX,256);
% subplot(3,1,2);plot((0:2/256:1), PP/256/2),xlabel('FrequencyY112 (Hz)'),
% set(gca,'Xlim',[FC1 FC2])
% [PP,F]=psd(X,256);
% subplot(3,1,3);plot((0:2/256:1), PP/256/2),xlabel('FrequencyY112 (Hz)'),
% set(gca,'Xlim',[FC1 FC2])
% figure(11),
% th=ar(XX',12,'burg');
% [A,B,C,D,F,LAM,T]=TH2POLY(th);
% sp = LAM./(abs(fft(A,256)).^2);% (LAM*T)
% g = sp(1:256/2+1);
% g=g(:); 
% subplot(3,1,1);plot((0:2/256:1), g/256/2),xlabel('Frequency (Hz)'), 
% set(gca,'Xlim',[FC1 FC2])
% th=ar(XXX',12,'burg');
% [A,B,C,D,F,LAM,T]=TH2POLY(th);
% sp = LAM./(abs(fft(A,256)).^2);% (LAM*T)
% g = sp(1:256/2+1);
% g=g(:); 
% subplot(3,1,2);plot((0:2/256:1), g/256/2),xlabel('Frequency (Hz)'), 
% set(gca,'Xlim',[FC1 FC2])
% th=ar(X',12,'burg');
% [A,B,C,D,F,LAM,T]=TH2POLY(th);
% sp = LAM./(abs(fft(A,256)).^2);% (LAM*T)
% g = sp(1:256/2+1);
% g=g(:); 
% subplot(3,1,3);plot((0:2/256:1), g/256/2),xlabel('Frequency (Hz)'), 
% set(gca,'Xlim',[FC1 FC2])


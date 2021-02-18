clc; clear all;
V=1500;
Vsquare= V^2;
tau1= 0.02* 10^-6;
%i=1
alpha = zeros(1,37);
f= 2000:500:24000
%f= 2:0.5:20
omega=2*pi*f
for i=1:1:45
omegasquare= omega(i).^2;
Vp1=(sqrt(2)*V)/(omega(i)*tau1)
Vp2=(1+ omegasquare*(tau1^2))*(sqrt(1+omegasquare*(tau1^2))-1)
Vp=Vp1*sqrt(Vp2)
%Vp=V.*(1+ ((3*omegasquare*(tau1.^2))/8) );
alpha(i) = (omegasquare * tau1 * Vp) / (2*Vsquare*( 1+ omegasquare * (tau1.^2)));
alpha(i) = alpha(i)*20*log10(exp(1))
i=i+1;
end
plot (f, alpha)
grid on
hold on


tau2= 0.06* 10^-6;
alpha = zeros(1,37);
f= 2000:500:24000
omega=2*pi*f
for i=1:1:45
omegasquare= omega(i).^2;
Vp1=(sqrt(2)*V)/(omega(i)*tau1)
Vp2=(1+ omegasquare*(tau1^2))*(sqrt(1+omegasquare*(tau1^2))-1)
Vp=Vp1*sqrt(Vp2)
%Vp=V.*(1+ ((3*omegasquare*(tau2.^2))/8) );
alpha(i) = (omegasquare * tau2 * Vp) / (2*Vsquare*( 1+ omegasquare * (tau2.^2)));
alpha(i) = alpha(i)*20*log10(exp(1))
i=i+1;
end
plot (f, alpha)
grid on
hold on 



tau3= 0.16* 10^-6;
alpha = zeros(1,37);
f= 2000:500:24000
omega=2*pi*f
for i=1:1:45
omegasquare= omega(i).^2;
Vp1=(sqrt(2)*V)/(omega(i)*tau1)
Vp2=(1+ omegasquare*(tau1^2))*(sqrt(1+omegasquare*(tau1^2))-1)
Vp=Vp1*sqrt(Vp2)
%Vp=V.*(1+ ((3*omegasquare*(tau3.^2))/8) );
alpha(i) = (omegasquare * tau3 * Vp) / (2*Vsquare*( 1+ omegasquare * (tau3.^2)));
alpha(i) = alpha(i)*20*log10(exp(1))
i=i+1;
end
plot (f, alpha)
grid on

xlabel('Frequency')
ylabel('Attenuation')

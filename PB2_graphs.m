
%plotando r

figure;
theta = 0:0.01:2*pi;
raio_polar = a.*(1-e^2)./(1+e.*cos(theta)) ;
polar(theta,raio_polar,'r-') %%plotar grafico polar


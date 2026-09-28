Req=6378.137;%raio terrra
Rp=6356.7523; %raio terra z
n=40 %divisoes


[x,y,z]=ellipsoid(0,0,0,Req,Req,Rp,n);

figure

surf(x,y,z)

colormap(cool)
axis equal


%instanciando os vetores
v=norm(V);
r=norm(R);
K=[0, 0, 1];
I=[1, 0, 0];
J=[0, 1, 0];
k=norm(K);
H=cross(R,V);
h=norm(H);
mu=3.986*1E+5;

%Energia Especifica (E)
E=0.5*v^2-mu/r;


%Semieixomaior (a)
a=-mu/(2*E);

%Vetor Excentricidade (e_vec)
e_vec = (1 / mu) * ((v^2 - mu / r) * R - dot(R, V) * V);
e=norm(e_vec);

%Inclinacao (i)
i=acosd((dot(K,H))/(k*h));


%direcao do nodo ascendente (n) e nodo ascendente ang (omega)
n=cross(K,H);
omega=acosd(dot(I,n)/(norm(n)*(norm(I))));

nj=dot(J,n);

if nj>=0
    omega=omega;
else
    omega=360-omega;
end
omega;

%Argumento do perigeu (w)
w=acosd(dot(n,e_vec)/(norm(n)*e));
ek=dot(K,e_vec);
if ek>=0
    w;
else
    w=360-w;
end

%Anomalia verdadeira (v)
w=acosd(dot(R,e_vec)/(r*e));
phi=dot(R,V);
if phi>=0
    v;
else
    v=360-v;
end

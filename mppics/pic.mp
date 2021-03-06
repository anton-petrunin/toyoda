input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../quad}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";



beginfig(10) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.c=(.4,1.1)*u;
z.d=(.55,.25)*u;

z.a1=(2,0)*u;
z.b1=(3,0)*u;
z.c1=(2.1,.9)*u;
z.d1=(2.95,1.05)*u;

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.c;
draw z.b--z.d;

draw z.a1--z.b1--z.c1--z.d1--cycle;
draw z.a1--z.c1;
draw z.b1--z.d1;

dOt z.a,z.b,z.c,z.d,z.a1,z.b1,z.c1,z.d1;
endfig;

beginfig(15) 
save u;
u:=1.4cm;

z.a1=(2,0)*u;
z.b1=(3,0)*u;
z.c1=(2.95,1.05)*u;
z.d1=(2.1,.9)*u;
z.m=whatever[z.a1,z.c1]=whatever[z.b1,z.d1];

draw z.a1--z.b1--z.c1--z.d1--cycle;
draw z.a1--z.c1;
draw z.b1--z.d1;

dOt z.a1,z.b1,z.c1,z.d1,z.m;

label.llft (btex $v_1$ etex,  z.a1);
label.lrt (btex $v_2$ etex,  z.b1);
label.urt (btex $v_3$ etex,  z.c1);
label.ulft (btex $v_4$ etex,  z.d1);
label.rt (btex $m$ etex,  z.m);
endfig;

beginfig(20) 
save u,p;
path p[];
u:=2.8cm;

p0=(0,0)*u{1.4,-1}..(1,0)*u{.1,1}..(0,0)*u{-1.4,-1};

x1= directiontime (-1,1) of p0 ;
x0=directiontime (1,1) of p0;

z.o=(-.6,0)*u;


hatchfill p0--cycle  withcolor (20, 2mm, -.5bp);
draw p0;
draw subpath (0,x0) of p0 penbold;
draw subpath (x1,2) of p0 penbold;

draw z.o+(1,1)*u/3-- z.o-(1,1)*u/3;
draw z.o+(1,-1)*u/3-- z.o-(1,-1)*u/3;

dOt (0,0)*u, point x0 of p0, point x1 of p0;


whitelabel (btex $K$ etex, (.6,0)*u);
label.bot (btex $\Sigma^-$ etex, point x0/2 of p0);
label.top (btex $\Sigma^+$ etex, point (x1+2)/2 of p0);
label.bot (btex $C^-$ etex,  z.o-(0,8));
label.top (btex $C^+$ etex,  z.o+(0,8));
endfig;

beginfig(25) 
save u,p;
path p[];
u:=2.8cm;

p0=(0,0)*u{1.4,-1}..(1,0)*u{.1,1}..(0,0)*u{-1.4,-1};

x1= directiontime (-1,1) of p0 ;
x0=directiontime (1,1) of p0;

z.o=(-.3,0)*u;
y.top=.5*u;
z.r=whatever*(1,1)+point x0 of p0=(whatever,y.top);
z.l=whatever*(-1,1)=(whatever,y.top);

p1=point x0 of p0--z.r--z.l--(0,0)*u;


hatchfill p0--cycle  withcolor (20, 2mm, -.5bp);
draw p0;
draw subpath (0,1) of p1;
draw subpath (2,3) of p1;
draw subpath (0,x0) of p0 penbold;

hatchfill subpath (0,x0) of p0--p1--cycle  withcolor (80, 2mm, -.5bp);

z.shift=(0,-.2)*u;
draw z.r+z.shift--z.l+z.shift;

dOt (0,0)*u, point x0 of p0;


whitelabel (btex $K$ etex, (.6,0)*u);
whitelabel (btex $K^-$ etex, (0,.2)*u);
whitelabel.top (btex $\Pi$ etex, .5[z.r,z.l]+z.shift);
label.bot (btex $\Sigma^-$ etex, point x0/2 of p0);
label.bot (btex $D$ etex, point .5 of p1 +(2,0));
endfig;

beginfig(30) 
save u,p,k,a;
path p[];
u:=.4cm;
k:=1.6;
a:=1.3*u;

z0=(0,1)*u;
z1=k*z0 rotated 60;
z2=z0 rotated 120;
z3=k*z0 rotated 180;
z4=z0 rotated -120;
z5=k*z0 rotated -60;

z.shift=(-8,0)*u;

z.s0=(a,a)+z.shift;
z.s1=(a,-a)+z.shift;
z.s2=(-a,-a)+z.shift;
z.s3=(-a,a)+z.shift;

draw z.s0--z.s1--z.s2--z.s3--cycle;

draw z0..z1..z3..z4..cycle;
draw z1..z2..z4..z5..cycle;
draw z2..z3..z5..z0..cycle;
%draw z0--z2--z4--cycle;
%draw z0..z1..z3..z4..z5..z1..z2..z3..z5..z0..z1..z3..z4..z5..z1..z2..z3..z5..cycle;

dOt z0,z1,z2,z3,z4,z5;
dOt z.s0,z.s1,z.s2,z.s3;

label.bot (btex $C_4$ etex,  z3+z.shift+(0,-2));
label.bot (btex $O_3$ etex,  z3+(0,-2));
endfig;

beginfig(40) 
save u,p;
path p[];
u:=.5cm;

z.shift=(3,0)*u;
z.vert=(1.5,-3.7)*u;

z.o=origin;
z0=(0,1)*u;
z.30=z0;
z.31=z0 rotated 120;
z.32=z0 rotated -120;

draw z.o--z.30;
draw z.o--z.31;
draw z.o--z.32;

dOt z.o,z.30,z.31,z.32;

z.40= z.shift+ z0;
z.41= z.shift+ z0 rotated 90;
z.42= z.shift+ z0 rotated 180;
z.43= z.shift+ z0 rotated -90;

draw z.shift+z.o--z.40;
draw z.shift+z.o--z.41;
draw z.shift+z.o--z.42;
draw z.shift+z.o--z.43;

dOt z.shift,z.40,z.41,z.42,z.43;


z.50= 2*z.shift+ z0;
z.51= 2*z.shift+ z0 rotated (360/5);
z.52= 2*z.shift+ z0 rotated (2*360/5);
z.53= 2*z.shift+ z0 rotated (-2*360/5);
z.54= 2*z.shift+ z0 rotated (-1*360/5);

draw 2*z.shift+z.o--z.50;
draw 2*z.shift+z.o--z.51;
draw 2*z.shift+z.o--z.52;
draw 2*z.shift+z.o--z.53;
draw 2*z.shift+z.o--z.54;

dOt 2*z.shift,z.50,z.51,z.52,z.53,z.54;

z.60= 3*z.shift+ z0;
z.61= 3*z.shift+ z0 rotated (360/6);
z.62= 3*z.shift+ z0 rotated (2*360/6);
z.63= 3*z.shift+ z0 rotated (3*360/6);
z.64= 3*z.shift+ z0 rotated (-2*360/6);
z.65= 3*z.shift+ z0 rotated (-1*360/6);

draw 3*z.shift+z.o--z.60;
draw 3*z.shift+z.o--z.61;
draw 3*z.shift+z.o--z.62;
draw 3*z.shift+z.o--z.63;
draw 3*z.shift+z.o--z.64;
draw 3*z.shift+z.o--z.65;

dOt 3*z.shift,z.60,z.61,z.62,z.63,z.64,z.65;

label (btex $\dots$ etex,  4*z.shift);


z.220= z.vert+ z0 rotated -90;
z.221= z.vert+ z0 rotated -90 rotated 120;
z.222= z.vert+ z0 rotated -90 rotated -120;
z.223=z.220 + z0 rotated -90 rotated 60;
z.224=z.220 + z0 rotated -90 rotated -60;

draw z.221--z.vert;
draw z.222--z.vert--z.220--z.223;
draw z.220--z.224;

dOt z.221,z.vert,z.222,z.220,z.223,z.224;

z.314= z.vert+1.5*z.shift+ z0;
z.311= z.vert+1.5*z.shift+ z0 rotated 90;
z.312= z.vert+1.5*z.shift+ z0 rotated 180;
z.313= z.vert+1.5*z.shift+ z0 rotated -90;

draw z.vert+1.5*z.shift+z.o--z.314;
draw z.vert+1.5*z.shift+z.o--z.311;
draw z.vert+1.5*z.shift+z.o--z.312;
draw z.vert+1.5*z.shift+z.o--z.313--z.313+z0;

dOt z.vert+1.5*z.shift,z.314,z.311,z.312,z.313,z.313+z0;


label.bot (btex $3$-tree etex,  z.o+(0,-1.1)*u);
label.bot (btex $4$-tree etex,  z.shift+(0,-1.1)*u);
label.bot (btex $5$-tree etex,  2*z.shift+(0,-1.1)*u);
label.bot (btex $6$-tree etex,  3*z.shift+(0,-1.1)*u);
label.bot (btex $2(2)$-tree etex,  .5[z.vert,z.220]+(0,-1.1)*u);
label.bot (btex $3(1)$-tree etex,  z.vert+1.5*z.shift+(0,-1.1)*u);
endfig;

beginfig(720) 
save u;
u:=1cm;

z.p=(0,0)*u;
z.q=(1.5,1.3)*u;
z.x=(1,0)*u;
z.y=(-.2,1)*u;
z.z=.6[z.x,z.y];

draw z.p--z.x--z.q--z.y--cycle;
draw z.x--z.y;
draw z.p--z.z--z.q dashed evenly;

dOt z.x,z.y,z.z,z.p,z.q;

label.lrt(btex $\tilde x$ etex, z.x);
label.ulft(btex $\tilde y$ etex, z.y);
label.top(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde p$ etex, z.p);
label.urt(btex $\tilde q$ etex, z.q);
endfig;

end

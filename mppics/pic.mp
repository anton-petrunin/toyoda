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

beginfig(20) 
save u,p;
path p[];
u:=2.8cm;

p0=(0,0)*u{1.4,-1}..(1,0)*u{.1,1}..(0,0)*u{-1.4,-1};

x1= directiontime (-1,1) of p0 ;
x0=directiontime (1,1) of p0;

z.o=(-.3,0)*u;


hatchfill p0--cycle  withcolor (20, 1mm, -.5bp);
draw p0;
draw subpath (0,x0) of p0 penbold;
draw subpath (x1,2) of p0 penbold;

draw z.o+(1,1)*u/3-- z.o-(1,1)*u/3;
draw z.o+(1,-1)*u/3-- z.o-(1,-1)*u/3;

dOt (0,0)*u, point x0 of p0, point x1 of p0;


whitelabel (btex $K$ etex, (.5,0)*u);
label.bot (btex $\Sigma^-$ etex, point x0/2 of p0);
label.top (btex $\Sigma^+$ etex, point (x1+2)/2 of p0);
label.bot (btex $C^-$ etex,  z.o-(0,8));
label.top (btex $C^+$ etex,  z.o+(0,8));
endfig;

end

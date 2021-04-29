settings.render=32;
import three;
size(12cm);
currentprojection=orthographic(0,4,-1);
currentlight=light(10,10,3);

path3[] faces3, faces2, faces1, faces0, facesp1, facesp2, facesp3;

triple S= (-1.5,0,0);
triple V= S;

triple A3=(0,0,0);
triple B3=(1,0,0);
triple C3=(.5,sqrt(1-.5**2),0);
triple D3=(.5,sqrt(1-.5**2)/3,sqrt(1-.5**2-(1-.5**2)/9));
triple E3=(A3+5*B3+C3+2*D3)/9;

faces3.push(A3--B3--C3--C3--cycle);
faces3.push(A3--B3--D3--D3--cycle);
faces3.push(A3--B3--E3--E3--cycle);
faces3.push(A3--C3--D3--D3--cycle);
faces3.push(A3--C3--E3--E3--cycle);
faces3.push(A3--D3--E3--E3--cycle);
faces3.push(B3--C3--D3--D3--cycle);
faces3.push(B3--C3--E3--E3--cycle);
faces3.push(B3--D3--E3--E3--cycle);
faces3.push(C3--D3--E3--E3--cycle);

draw(faces3,.5bp+black+opacity(1));
draw(surface(faces3),white+opacity(.5),light=nolight);

triple A2=A3+S;
triple B2=B3+S;
triple C2=C3+S;
triple D2=D3+S;
triple E2=(4*B2+C2+D2)/6;

faces2.push(A2--B2--C2--C2--cycle);
faces2.push(A2--B2--D2--D2--cycle);
faces2.push(A2--B2--E2--E2--cycle);
faces2.push(A2--C2--D2--D2--cycle);
faces2.push(A2--C2--E2--E2--cycle);
faces2.push(A2--D2--E2--E2--cycle);
faces2.push(B2--C2--D2--D2--cycle);
faces2.push(B2--C2--E2--E2--cycle);
faces2.push(B2--D2--E2--E2--cycle);
faces2.push(C2--D2--E2--E2--cycle);

draw(faces2,.5bp+black+opacity(1));
draw(surface(faces2),white+opacity(.5),light=nolight);
draw(surface(B2--C2--D2--D2--cycle),gray+opacity(.5),light=nolight);

triple A1=A3+2*S;
triple B1=B3+2*S;
triple C1=C3+2*S;
triple D1=D3+2*S;
triple E1=(-A1+3*B1+C1+D1)/4;

faces1.push(A1--B1--C1--C1--cycle);
faces1.push(A1--B1--D1--D1--cycle);
faces1.push(A1--B1--E1--E1--cycle);
faces1.push(A1--C1--D1--D1--cycle);
faces1.push(A1--C1--E1--E1--cycle);
faces1.push(A1--D1--E1--E1--cycle);
faces1.push(B1--C1--D1--D1--cycle);
faces1.push(B1--C1--E1--E1--cycle);
faces1.push(B1--D1--E1--E1--cycle);
faces1.push(C1--D1--E1--E1--cycle);

draw(faces1,.5bp+black+opacity(1));
draw(surface(faces1),white+opacity(.5),light=nolight);

triple A0=A3+3*S;
triple B0=B3+3*S;
triple C0=C3+3*S;
triple D0=D3+3*S;
triple E0=(2*B0+2*C0-A0)/3;

faces0.push(A0--B0--C0--C0--cycle);
faces0.push(A0--B0--D0--D0--cycle);
faces0.push(A0--B0--E0--E0--cycle);
faces0.push(A0--C0--D0--D0--cycle);
faces0.push(A0--C0--E0--E0--cycle);
faces0.push(A0--D0--E0--E0--cycle);
faces0.push(B0--C0--D0--D0--cycle);
faces0.push(B0--C0--E0--E0--cycle);
faces0.push(B0--D0--E0--E0--cycle);
faces0.push(C0--D0--E0--E0--cycle);

draw(faces0,.5bp+black+opacity(1));
draw(surface(faces0),white+opacity(.5),light=nolight);
draw(surface(B0--E0--C0--A0--cycle),gray+opacity(.5),light=nolight);

triple Ap1=A3+4*S;
triple Bp1=B3+4*S;
triple Cp1=C3+4*S;
triple Dp1=D3+4*S;
triple Ep1=(2*Bp1-1.5*Dp1-Ap1+4*Cp1)/3.5;

facesp1.push(Ap1--Bp1--Cp1--Cp1--cycle);
facesp1.push(Ap1--Bp1--Dp1--Dp1--cycle);
facesp1.push(Ap1--Bp1--Ep1--Ep1--cycle);
facesp1.push(Ap1--Cp1--Dp1--Dp1--cycle);
facesp1.push(Ap1--Cp1--Ep1--Ep1--cycle);
facesp1.push(Ap1--Dp1--Ep1--Ep1--cycle);
facesp1.push(Bp1--Cp1--Dp1--Dp1--cycle);
facesp1.push(Bp1--Cp1--Ep1--Ep1--cycle);
facesp1.push(Bp1--Dp1--Ep1--Ep1--cycle);
facesp1.push(Cp1--Dp1--Ep1--Ep1--cycle);

draw(facesp1,.5bp+black+opacity(1));
draw(surface(facesp1),white+opacity(.5),light=nolight);

triple Ap2=A3+5*S;
triple Bp2=B3+5*S;
triple Cp2=C3+5*S;
triple Dp2=D3+5*S;
triple Ep2=(-Dp2-Ap2+5*Cp2)/3;

facesp2.push(Ap2--Bp2--Cp2--Cp2--cycle);
facesp2.push(Ap2--Bp2--Dp2--Dp2--cycle);
facesp2.push(Ap2--Bp2--Ep2--Ep2--cycle);
facesp2.push(Ap2--Cp2--Dp2--Dp2--cycle);
facesp2.push(Ap2--Cp2--Ep2--Ep2--cycle);
facesp2.push(Ap2--Dp2--Ep2--Ep2--cycle);
facesp2.push(Bp2--Cp2--Dp2--Dp2--cycle);
facesp2.push(Bp2--Cp2--Ep2--Ep2--cycle);
facesp2.push(Bp2--Dp2--Ep2--Ep2--cycle);
facesp2.push(Cp2--Dp2--Ep2--Ep2--cycle);

draw(facesp2,.5bp+black+opacity(1));
draw(surface(facesp2),white+opacity(.5),light=nolight);
draw(surface(Dp2--Ap2--Ep2--Ep2--cycle),gray+opacity(.5),light=nolight);

triple Ap3=A3+6*S;
triple Bp3=B3+6*S;
triple Cp3=C3+6*S;
triple Dp3=D3+6*S;
triple Ep3=(-Bp3-Dp3-2*Ap3+7*Cp3)/3;

facesp3.push(Ap3--Bp3--Cp3--Cp3--cycle);
facesp3.push(Ap3--Bp3--Dp3--Dp3--cycle);
facesp3.push(Ap3--Bp3--Ep3--Ep3--cycle);
facesp3.push(Ap3--Cp3--Dp3--Dp3--cycle);
facesp3.push(Ap3--Cp3--Ep3--Ep3--cycle);
facesp3.push(Ap3--Dp3--Ep3--Ep3--cycle);
facesp3.push(Bp3--Cp3--Dp3--Dp3--cycle);
facesp3.push(Bp3--Cp3--Ep3--Ep3--cycle);
facesp3.push(Bp3--Dp3--Ep3--Ep3--cycle);
facesp3.push(Cp3--Dp3--Ep3--Ep3--cycle);

draw(facesp3,.5bp+black+opacity(1));
draw(surface(facesp3),white+opacity(.5),light=nolight);

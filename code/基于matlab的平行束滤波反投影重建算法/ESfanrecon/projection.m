xe=[0 0 0.22 -0.22 0 0 0 -0.08 0 0.06 0.5538];
ye=[0 -0.0184 0 0 0.35 0.1 -0.1 -0.605 -0.605 -0.605 -0.3858];
ae=[0.69 0.6624 0.11 0.16 0.21 0.046 0.046 0.046 0.023 0.023 0.0333];
be=[0.92 0.874 0.31 0.41 0.25 0.046 0.046 0.023 0.023 0.046 0.206];
alpha=[0 0 -18 18 0 0 0 0 0 0 -18];
alpha= alpha*pi/180;
rho=  [1 -0.98 -0.02 -0.02 0.01 0.01 0.01 0.01 0.01 0.01 0.03];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Equally Spaced !!       %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic
D= 20000;
R= 1;  % excircle;
s_max= D*R/sqrt(D*D- R*R);
s= [-64:63]/64 *s_max;
beta=[1:360]*2*pi/360;
proj= zeros(128,360);
roi=[-1 1 -1 1];
RF= zeros(size(s));
for v= 1:360
    beta= v*pi/180+ pi/2;
    RF= ESFanRad(beta, s, D, xe, ye, ae, be, alpha, rho);
    proj(:,v)= RF';
end
aaaaaa=0;
ma= max(max(proj));
mi= min(min(proj));
projection_time= toc
figure, window3(0,0.2,roi,proj);
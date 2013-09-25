phi = -0.05476; theta = 0.02395; psi = 2.15798;
phi = phi/2; theta = theta/2; psi = psi/2;
cphi = cos(phi); sphi=sin(phi);
cpsi = cos(psi); spsi=sin(psi);
ctheta = cos(theta); stheta=sin(theta);

q0=cphi*ctheta*cpsi + sphi*stheta*spsi;
q1=sphi*ctheta*cpsi - cphi*stheta*spsi;
q2=cphi*stheta*cpsi + sphi*ctheta*spsi;
q3=cphi*ctheta*spsi - sphi*stheta*cpsi;

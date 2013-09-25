% Generate coordinates for equidistant triangle

function L = equidistant(l,x_shift,y_shift)

x1 = l/2; 
y1 = l*cos(deg2rad(30))/2; 

x2 = 0;  
y2 = -l*cos(deg2rad(30))/2; 

x3 = -l/2;
y3 = l*cos(deg2rad(30))/2; 

L = [x1+x_shift, y1+y_shift; ...
    x2+x_shift, y2+y_shift; ...
    x3+x_shift, y3+y_shift];


end
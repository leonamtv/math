bound = 10;
step = 0.5;
[x,y] = meshgrid(-bound:step:bound,-bound:step:bound); 

u = x.*x - y.*y;
v = -2.0*x.*y;

figure('color', [0.2, 0.2, 0.2]);

h = quiver(x, y, u, v, "color", "r");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y, u, 2.*v, "color", "b");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y, u, 3.*v, "color", "y");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y, u, 4.*v, "color", "g");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);

hold off;
axis off;
box off;

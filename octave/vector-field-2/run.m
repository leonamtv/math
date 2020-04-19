bound = 0.5;
step = 0.05;
[x,y] = meshgrid(-bound:step:bound,-bound:step:bound); 

u = -y;
v = x;

figure('color', [0.2, 0.2, 0.2]);

h = quiver(x, y, u, v, "color", "r");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y, u, 2.*v, "color", "b");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y, u, 3.*v, "color", "g");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y, u, 4.*v, "color", "y");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);

hold off;
axis off;
box off;

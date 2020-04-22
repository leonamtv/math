bound = 10;
step = 0.5;
[x,y] = meshgrid(-bound:step:bound,-bound:step:bound); 

u = log((x.^2 + y.^2)/sqrt(x.^pi + y.^3));
v = ((x.^2 - y.^2)/sqrt(x.^3 + y.^e));

figure('color', [0.2, 0.2, 0.2]);

h = quiver(x, y, u, v, "color", "r");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x + 0.5, y, u, 2.*v + log(((x.^2 - y.^2)/sqrt(x.^3 + y.^e))), "color", "b");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x, y + 0.5, u, 4.*v + 2*log(((x.^2 - y.^2)/sqrt(x.^3 + y.^e))), "color", "y");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);
hold on;  

h = quiver(x - 0.5, y - 0.5, u, 6.*v + 4*log(((x.^2 - y.^2)/sqrt(x.^3 + y.^e))), "color", "g");
set (h, "maxheadsize", 0.00);
set (h, "linewidth", 0.8);

hold off;
axis off;
box off;

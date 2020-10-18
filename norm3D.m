tic;
P=input('\n Enter P-norm:\n');
syms x1;
syms x2;
syms x3;
for p=0.1:0.2:P
    axis([-1.8 1.8 -1.8  1.8 -1.8 1.8]);
    whitebg('white');
    f=(((abs(x1)^p)+(abs(x2)^p)+(abs(x3)^p))^(1/p))-1;
    fimplicit3(f);
    title('\bf\fontname{Courier}\fontsize{12}(x_{1}^{p}+x_{2}^{p}+x_{3}^{p})^{1/p}\leq 1');
    xlabel('\bf\fontname{Courier}\fontsize{10}x_{1}');
    ylabel('\bf\fontname{Courier}\fontsize{10}x_{2}');
    zlabel('\bf\fontname{Courier}\fontsize{10}x_{3}');
    colormap(cool);
%   colorbar;
    hold on;
    drawnow; 
end
t=toc;
txt=['time = ',num2str(t)];
disp(txt);
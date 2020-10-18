tic;
P=input('\n Enter P-norm:\n');
syms x1;
syms x2;
for p=0.1:0.1:P
f=((((abs(x1)^p)+(abs(x2)^p)))^(1/p))-1;
axis([-1.7 1.7 -1.7 1.7]);
ez=ezplot(f);
whitebg('white');
a=randi([0,1],1,3);
set(ez,'color',a);
drawnow;
hold on;
end
t=toc;
txt=['time = ',num2str(t)];
disp(txt);
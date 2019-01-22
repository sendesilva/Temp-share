tic;

% (a)
traj1 = logistic(0.2, 2, 200);
traj2 = logistic(0.200001, 2, 200);
diff = abs(traj1 - traj2);
n_values = [0:200];

figure(1);
plot(n_values,diff);
%(b)
traj1 = logistic(0.2, 3.4, 200);
traj2 = logistic(0.200001, 3.4, 200);
diff = abs(traj1 - traj2);
n_values = [0:200];
figure(2);
plot(n_values,diff);

%(e)
traj1 = logistic(0.2, 3.4, 500);
traj2 = logistic(0.200001, 3.4, 500);
ans = abs(traj1(500) - traj2(500));

%(g)
traj1 = logistic(0.2, 3.72, 5000);
traj2 = logistic(0.200001, 3.72, 5000);
diff = abs(traj1 - traj2);
mean(diff)

toc;

function [iterates] = logistic(x0, r, n)
	iterates=[]; 
	currentX=x0; 
	for index = [0:n]
		iterates = [iterates, currentX];
		currentX = r * currentX * (1 - currentX);
	end
end

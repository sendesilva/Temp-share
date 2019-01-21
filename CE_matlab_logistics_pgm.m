% Matlab's syntax for what a function call should return looks like:
% function [outputs_to_return] = function_name(input_arguments)
# some commands
# return
# endfunction

function [iterates] = logistic(x0, r, n)
  iterates=[]; % setup an [empty vector] in which to store the iterates
  currentX=x0; % this is the internal variable that stores the current iterate
  for index = [0:n] % for index = 0, 1, ...n
    % stick the current iterate onto the tail end of the vector of 
    % iterates:
    iterates = [iterates, currentX]
    % compute the next iterate and stick it in the current-iterate
    % variable:
    currentX = r * currentX * (1 - currentX);
    % and loop
  endfor
endfunction
#

# Hwk 1.4 Q1
# (a)
traj1 = logistic(0.2, 2, 200);
traj2 = logistic(0.200001, 2, 200);
diff = abs(traj1 - traj2);
n_values = [0:200];
figure(1);
plot(n_values,diff);

# (b)
traj1 = logistic(0.2, 3.4, 200);
traj2 = logistic(0.200001, 3.4, 200);
diff = abs(traj1 - traj2);
n_values = [0:200];
figure(1);
plot(n_values,diff);

# (e)
traj1 = logistic(0.2, 3.4, 500);
traj2 = logistic(0.200001, 3.4, 500);
ans = abs(traj1(500) - traj2(500));
ans # 0

# (g)
traj1 = logistic(0.2, 3.72, 5000);
traj2 = logistic(0.200001, 3.72, 5000);
diff = abs(traj1 - traj2);
mean(diff) # 0.2436



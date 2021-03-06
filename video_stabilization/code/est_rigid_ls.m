function [tx,ty,theta] = est_rigid_ls( p1,p2 )
%est_rigid_ls Estimates motion in case of translation + rotation
%   The least squares optimization can be modelled as a
%   Procrustes problem

p1 = p1';
p2 = p2';

% Create mean-subtracted arrays
p1_mean = mean(p1,2);
p2_mean = mean(p2,2);
p1_mean_sub(1,:) = p1(1,:) - p1_mean(1);
p1_mean_sub(2,:) = p1(2,:) - p1_mean(2);
p2_mean_sub(1,:) = p2(1,:) - p2_mean(1);
p2_mean_sub(2,:) = p2(2,:) - p2_mean(2);


% Solution to the Procrustes problem
p = p2_mean_sub*p1_mean_sub';
[U,~,V] = svd(p);
R = V*U';
t = -p1_mean+R*(p2_mean);
tx = t(1);
ty = t(2);

% inverting signs to take care of opposite notion of axis
theta = +asin(R(1,2))*180/pi; % coverting to degrees

end


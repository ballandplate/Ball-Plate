% State Space Representation
A = 0; % Add here linearized system model instead of zero
B = 0; % Add here input vector instead of zero

C = eye(2, 4);   % Shows we have two outputs
D = zeros(2,1);

% Add actuator dynamics (if you would consider to add)
A(3,3) = 0; % Add here actuator dynamics instead of zero
A(4,3) = 0; % Add here actuator dynamics instead of zero
B = Kg * kt * B / Rm;

% Load into state-space system
sys_FURPEN_ol = ss(A,B,C,D) % Open loop system model

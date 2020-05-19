%% SETUP Rotpen

%% Sets the necessary parameters to run

clear all;

%% Lab Configuration
% Type of controller set it to 
% Pass for now later add the debug mode here

%% Servo Configuration
% Add electromechanical properties of the motor here.

%% Load the model of the system
% Set the electromechanical system model

% Set the rotary arm parameters

% Load pendulum parameters
FURPEN_SSR_eqns; % This runs furuta pendulum model and sets up its state space representation

%% Add controller
% Balance control (small angle approx.)
epsilon = RAD2DEG*epsilon;

% The requirements of the system
zeta = 0.7;
wn = 4;
d_p3 = -30; % Desired pole location
d_p4 = -40; % Desired pole location

% State-feedback gain
% One can customize this function or uses
% built-in functions of MATLAB
K = control_FURPEN(A, B, wn, zeta, p3, p4);

%% Swing-up Control
% Use energy based solution from [Underactuated Robotics, MIT]
[Er, a_max] = swing_up_FURPEN(eta_m, eta_g, Kg, kt, Rm, Mr, Lr);

%% Display
disp(' ');
disp('Control gains: ');
K

disp('Swing-up Parameters: ');
disp( [' Er =', num2str(Er) ' J']);
disp( [' a_max=' num2str(a_max) 'm/s^2']);

%% Plot the result




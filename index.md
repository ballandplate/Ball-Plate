# Team Members
Alejandro Jimenez, Levi Cruz, Ryan Espinosa, Alejandro Corona, Emilio Ruiz.

# Introduction 
The ball and plate is a system built to understand how balancing systems work in a control system. The sytem consists of having a ball on top of a flat plate. When an outside force moves the ball to any direction, the plate recognizes the movement and opposes the ball's trajectory to ultimately move the ball back to its original position. The goal of this project is to design and simulate the system,  where the plate's objective is to balance the ball and keep the ball at the center regardless of where the ball moves. Visual servoying  will be used to get position information of the ball's location. Controls System Engineering by Norman S. Nise 7th edition along with google scholar articles were used a was used to come up with a state space representation of the system among other information.

Upon reading this report, you will find the Modeling System modeled in Simulink and CoppeliaSim, control design along modeled in simulink along with its corresponding responces, code used for simulations among references used to execute the model. 

# Modeling of the system
![image](https://user-images.githubusercontent.com/65519089/82276876-57993500-993b-11ea-9ad9-f3e26dd8b5be.png)                      

Figure (1)

![image](https://user-images.githubusercontent.com/65519089/82276986-a1821b00-993b-11ea-94bb-55dc06e2e195.png)                      

Figure (2)

Figure (1) represents a simple model of the ball and plate. Figure (2) shows a simple set up of the model. In order to verify the systems performance, a model was created in Copelliasim to simulate behavior of the system. The model simulates the dynamics/physics of the system and object ineractions. Copelliasim allows us to connect to communicate with an external application (matlab) using a remote.
A vision sensor was used in the simulation of the ball and plate project. At first calibration was needed as we tried to have the sensor follow the ball as it moved. After considering the movement of the plate as well. It was decided it would be best to have the vision sensor placed where the entire system was in the field of view, thus eliminating the need for calibrating the sensor.


Given the ball and plate system and using Newton's laws of motion, the following equation can be arrived at describing the acceleration of the ball given the angle of the servo.

a(t) =2mgrarmrball2L(mr2 + J)(t) = Kbb(t) 

Taking the Laplace transform we arrive at the transfer function relating the servo angle to the ball position

s2X(s) = Kbb(s)  Pbb= Kbbs2

The transfer function for the servo itself is given by

Ps(s) = Ks(s + 1)

Combining these two we arrive that the transfer function for the whole system:

P = KKbbs3(s + 1)

For our model 𝝉 = 0.0248 and K = 1.53.

To design for the servo loop the assumption 𝜃 actual = 𝜃 desired which allows us to reduce the system to a second order system such that:

P= Kbbkps2 + Kbbkds + Kbbkp

Where kd and kp  are the derivative and proportional gains respectively.

For our design we specify a percent overshoot of 10% and a setting time of 1s. Calculating for these specifications we arrive at the following parameters for our system

kd  = 0.95
kp  = 1.81
wn  = 2.25 rad/s
𝛇  = 0.59


---------------------------------------------------
Figure __ shows the step response of the system. The desired position was set to 3cm. The peak value of 3.352cm (about 10% overshoot) was reached at 0.985s ≈ 1s as designed 


# Control Design and Simulations 

![image](https://user-images.githubusercontent.com/65519089/82283924-997ea700-994c-11ea-96b8-c66e61614ef3.png)

Figure (3)

![image](https://user-images.githubusercontent.com/65519089/82283593-ac44ac00-994b-11ea-83c2-5b60b18fccca.png)

Figure (4)

![image](https://user-images.githubusercontent.com/65519089/82292173-39453080-995f-11ea-8394-62c0faf5f416.png)

Figure (5)

Figures 3-5 is a simulated representation of the system. Figure (4) and Figure (5) show a square wave response and step response accordingly. Unfortunately, for linking the CopelliaSim to Simulink/Matlab, there were many issues that came up. Libraries and files needed were created, as well as having them in the same folder but didn’t have any luck of successfully linking the two models. When the IP numbers and PORT were changed, Matlab gave an error stating that our computers were operating at 64 bits while Matlab was operating at 32 bits which didn’t allow us to link the two systems.

Given the ball and plate system and using Newton's laws of motion, the following equation can be arrived at describing the acceleration of the ball given the angle of the servo.

a(t) =2mgrarmrball2L(mr2 + J)(t) = Kbb(t) 

Taking the Laplace transform we arrive at the transfer function relating the servo angle to the ball position

s2X(s) = Kbb(s)  Pbb= Kbbs2

The transfer function for the servo itself is given by

Ps(s) = Ks(s + 1)

Combining these two we arrive that the transfer function for the whole system:

P = KKbbs3(s + 1)

For our model 𝝉 = 0.0248 and K = 1.53.

To design for the servo loop the assumption 𝜃 actual = 𝜃 desired which allows us to reduce the system to a second order system such that:

P= Kbbkps2 + Kbbkds + Kbbkp

Where kd and kp  are the derivative and proportional gains respectively.

For our design we specify a percent overshoot of 10% and a setting time of 1s. Calculating for these specifications we arrive at the following parameters for our system

kd  = 0.95
kp  = 1.81
wn  = 2.25 rad/s
𝛇  = 0.59
---------------------------------------------------
Figure (5) shows the step response of the system. The desired position was set to 3cm. The peak value of 3.352cm (about 10% overshoot) was reached at 0.985s ≈ 1s as designed

# Simulation Code 

![image](https://user-images.githubusercontent.com/65519089/82282128-f2980c00-9947-11ea-9445-72627e08cab6.png)


![image](https://user-images.githubusercontent.com/65519089/82282222-27a45e80-9948-11ea-9002-fb74321326d8.png)

![image](https://user-images.githubusercontent.com/65519089/82282676-448d6180-9949-11ea-8682-63dd3b12ac7e.png)


# References

[1] Awtar, Shorya, et al. "Mechatronic design of a ball-on-plate balancing system." Mechatronics 12.2 (2002): 217-228.

[2] Muratore, Fabio, Michael Gienger, and Jan Peters. "Assessing Transferability from Simulation to
    Reality for Reinforcement Learning." IEEE transactions on pattern analysis and machine
    intelligence (2019).

[3] Controls System Engineering by Norman S. Nise 7th edition
 
[4] Zeller, Rudolf, and Joachim Neumann. "Calibration-test member for a coordinate-measuring instrument." U.S. Patent No. 4,962,591. 16 Oct. 1990.

[5] https://www.mathworks.com/support/search.html?q=simulink&page=1

[6] Cheng, Chi-Cheng, and Chen-Hsun Tsai. "Visual servo control for balancing a ball-plate system." International Journal of Mechanical     Engineering and Robotics Research 5.1 (2016): 28.
  




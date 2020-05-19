# Team Members
Alejandro Jimenez, Levi Cruz, Ryan Espinosa, Alejandro Corona, Emilio Ruiz.

# Introduction 
The ball and plate is a system built to understand how balancing systems work in a control system. The sytem cosists of having a ball on top of a flat plate. When an outside force moves the ball to any direction, the plate recognizes the movement and opposes the ball's trajectory to ultimately move the ball back to its original position. The goal of this project is to design and simulate the system,  where the plate's objective is to balance the ball and keep the ball at the center regardless of where the ball moves. Visual servoying  will be used to get position information of the ball's location. Controls System Engineering by Norman S. Nise 7th edition along with google scholar articles were used a was used to come up with a state space representation of the system among other information.

Upon reading this report, you will find the Modeling System modeled in Simulink and CoppeliaSim, Sensor Calibration (Add info here about sensor calibration), Controller Design and Simulation (add info here about controller Design and Simulation) along with the appendix.

# Modeling of the system
![image](https://user-images.githubusercontent.com/65519089/82276876-57993500-993b-11ea-9ad9-f3e26dd8b5be.png)                      

Figure (1)

![image](https://user-images.githubusercontent.com/65519089/82276986-a1821b00-993b-11ea-94bb-55dc06e2e195.png)                      

Figure (2)

Figure (1) represents a simple model of the ball and plate. Figure (2) shows a simple set up of the model. In order to verify the systems performance, a model was created in Copelliasim to simulate behavior of the system. The model simulates the dynamics/physics of the system and object ineractions. Copelliasim allows us to connect to communicate with an external application (matlab) using a remote




# Sensor Calibration



# Control Design and Simulations 

![image](https://user-images.githubusercontent.com/65519089/82281933-77365a80-9947-11ea-9d73-d644e2ebe15a.png)

Figure (3)

![image](https://user-images.githubusercontent.com/65519089/82283593-ac44ac00-994b-11ea-83c2-5b60b18fccca.png)

Figure (4)

![image](https://user-images.githubusercontent.com/65519089/82283810-46a4ef80-994c-11ea-8df0-fe97bdd5a899.png)

Figure (5)




# Simulation Code 

![image](https://user-images.githubusercontent.com/65519089/82282128-f2980c00-9947-11ea-9445-72627e08cab6.png)


![image](https://user-images.githubusercontent.com/65519089/82282222-27a45e80-9948-11ea-9002-fb74321326d8.png)

![image](https://user-images.githubusercontent.com/65519089/82282676-448d6180-9949-11ea-8682-63dd3b12ac7e.png)






# References

Awtar, Shorya, et al. "Mechatronic design of a ball-on-plate balancing system." Mechatronics 12.2 (2002): 217-228.


## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/ballandplate/Ball-Plate/edit/master/index.md) to maintain and preview the content for your website in Markdown files. After that you will do good. 

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/ballandplate/Ball-Plate/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.

#Growler

##THE GOAL
- Twitter may be dominant today, but let's start working on the next big thing. You're going to make a micro blogging application called **GROWLER** using **Sinatra**. All the cool things we've covered this week will be put to use!

- **User stories:**
  - The user can write growls (micro blogs) of 142 characters maximum
  - The user can see all the growls that have been written 

##Review

- Ruby
  - Classes and objects
  - Gems
- Sinatra
  - Routes
  - Parameters
  - Sessions

##PHASES

###PHASE 1 - NO COMPUTERS
- **Pseudo Code** and break it down into small steps
  - Think about how you will write, access, and persist the growl data (**HINT** Think back to sessions this week)
  - Divide the different actions of your application into `get` and `post` requests and think about the paths you will create
  - Take time to answer these questions:
    - How will a user write a growl?
    - How will we display the growls onto the page?
    - Think about the validations you may need
  - Include some wireframes if you feel good!

###PHASE 2 - SET UP A GIT REPO
- Using GitHub, set up a public repository and add your partner as a collaborator 
- **TIP** Remember to check the box for initializing a README file so that a ```master``` branch is automatically created for you
- Remember to push your commits so that your partner can pull the code down when it's their turn to program

###PHASE 3 - PAIR PROGRAMMING
- Time to set up some `get` routes!
- You will need paths to: 
  - Show all the growls
  - A page with a form to create new growls
- How will you take the user from one page to the other?
- Move on to the `post` routes
  - How will the user create growls?
  - How will you persist that information?
  - What view will the user see once their growl is saved? (How will they get there?)

###PHASE 4 - SET UP THE LOOK
- Set up a `public` folder to store your CSS and images
- Set up and build your views in a `views` folder
- Write the base HTML you'll need with some mock data, we'll worry about making it dynamic in the next steps
- Write the CSS to apply some basic styles

**TIP** Don't spend too much time on this step! Get some basic styles onto the page and go back after you're done with the Ruby programming to add any additional style to it.
  
###PHASE 5
- Show your creations!
- Things you will cover:
  - Demo
  - Process
  - What did you struggle with / How did you solve it?
  - Most proud of
  - Things to do differently
- **Every one has to talk**


- **BONUSes**
  - Add tagging functionality 
  - Add commenting functionality
  - Add a user profile page that will show only the user's growls. How will you differentiate between users?
  - Allow people to go to a single growl's page

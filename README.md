# _Volunteer Tracker_

#### | May 22th. 2020_

#### By _** Josh Hellman**_

## Description

This app will let a user add a project title to a database, then a  users can edit the title and/or delete the project. A user can also add volunteers to project, add or edit volunteers names.  
 
## Setup/Installation Requirements

_Make sure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation) installed on your computer._

_Make sure you have [git version control](https://git-scm.com/downloads) installed on your computer._


1. find the green 'Clone or Download' button and copy the link
2. open terminal and type...

**Windows**
```sh 
cd desktop
```

 Mac & linux 
 ```sh
 cd ~/Desktop
 ```

 3. in terminal type '_git clone https://github.com/jhell85/anagrams_antigrams.git_ '

```sh
git clone https://github.com/jhell85/anagrams_antigrams.git
```

4. navigate to the new folder that was created on your desk
```sh
cd volunteer_tracker
```

5. run bundle 

```sh
  bundle
```

6. run ruby app.rb then in your browsers URL bar type 'http://localhost:4567' and view the app from your own machine

```sh
  ruby app.rb
```


## Specs
### Behavior Driven Development Spec List

Behavoir | Input | Output
:---------|:------:|:------:
|1 - The program will let a user  input and save a project title | 'Teaching kids to code' | 'Teaching kids to code' is saved as the project title |
|1 - The program will show a user all projects that have been inputted | 'Teaching kids to code' & 'Teaching kids Ruby' | display shows 'Teaching kids to code & Teaching kids Ruby' |
|1 - The program will let a user edit an inputted project definition | 'Teaching kids to code' => edited to 'Teaching kids Python' | display shows 'Teaching kids python' |
|1 - The program will let a user delete an inputted project | 'Teaching kids python' => deleted  | display has removed project titled 'Teaching kinds python' |
|1 - The program will let a user create and assign volunteers for a project | 'Teaching kids to code' add volunteer => Josh | project title 'Teaching kids to code' has a Josh assigned as a volunteer  |
|1 - The program will let a user see all the assigned volunteers for a project | 'Teaching kids python' => page will show  'all volunteers' assigned to a project | display shows 'Teaching kids python' all volunteers assigned project|



## Support 

_The software is provided as is. It might work as expected - or not. Use at your own risk._


## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Primary Language
* [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) - Simple Scaffolding
* [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) - Used for interactivity in the page 
* [jQuery](https://jquery.com/) - Used to interact with the DOM
* [Bootstrap 4.4](https://getbootstrap.com/) - Used for styling


### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

Copyright (c) 2020 **_Josh Hellman_**
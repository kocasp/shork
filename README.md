# Shork.me
web crawl API for Apple Shortcuts mobile app   
![Imgur Image](https://i.imgur.com/Mo6UXId.png)


## Overview
Shork enables you to use Shortcuts "get contents of webpage" module to get and process any data from the web. 

### How it works?
Shork receives 2 GET params. 'p' is an URL of a page that is going to be scraped and 's' is CSS selector that will be used to find content.
There is a form available on landing page that lets you generate a link. It takes care of encoding special characters before passing it as url param.

### Use cases
Lets say that we just want to read loud the header of example.com domain
1. go to Shork.me and enter 'example.com' as URL and 'h1' as selector
2. copy generated address
3. enter Shortcuts app
4. go to 'my shortcuts' tab and press 'create shortcut'
5. press 'add action' > 'web' > 'get contents of Url'
6. paste previously copied address to URL field
7. press '+' at the bottom to add next module
8. select > 'documents' > 'speak text'. 'Contents of URL' should be automatically set as reference.
9. press 'play' button at the bottom of the screen to see how things work. It should read 'Example domain'. You can check that this is what example.com header says.
10. you can now title and save the shortcut and use it with Siri.


## Installation
<!--- Consider the possibility that whoever is reading your README is a
novice and would like a more guidance. --->

### Requirements
If it has dependencies that have to be installed manually,
also add it here. __(Ruby version, System dependencies, Configuration)__

### Local setup
List steps that need to be followed to set-up and run the rails server.
Include all information required to perform `rake db:create` and
`rake db:migrate` with success.  
Menetion if the database should be populated with `rake db:seed` or loaded
from some dump.

### First test run
Describe what should be done to successfully perform tests on the project
that has just been cloned.

### Installing and running services
All information about installation of side services that
your app may use. __(job queues, cache servers, search engines, etc.)__


## Running app locally
Explain how the app shoud be run in development mode.


## Application structure
If the project is not only conventional rails app, describe it in more details.


## Development instructions
This section is a substitute of Wiki and should be systematically refreshed.
This is a good place to include workflows that a newcomer should get familiar with.

### Patterns
Describe what patterns need to be followed when developing the app.

### Git workflow
Describe what branches you use and for what purpose.
Describe if you use rebase instead of merge etc.

### Roadmap
General roadmap including items that should be __refactored__ ASAP.

<!--- Refer to https://github.com/matiassingers/awesome-readme to see examples and tools
to create readme in general --->

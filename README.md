# Shork.me
web crawl API for Apple Shortcuts mobile app   
![Imgur Image](https://i.imgur.com/Mo6UXId.png)


## Overview
Shork enables you to use Shortcuts "get contents of webpage" module to get and process any data from the web. 

### How it works?
Shork receives 2 GET params. 'p' is an URL of a page that is going to be scraped and 's' is CSS selector that will be used to find content.
There is a form available on landing page that lets you generate a link. It takes care of encoding special characters before passing it as url param.

### Use cases
#### Quick example
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

### Requirements
project was developed using ruby 2.5.3

### Local setup
poltergeist gem requires phantomjs installed locally  
on mac: `brew cask install phantomjs`

### Installing and running services
No external services are being used.


## Running app locally
No5hing else than `rails s`


## Application structure
Project has a typical rails structure


## Development instructions
-

### Patterns
-

### Git workflow
Master branch is automatically deployed to heroku production server.

### Roadmap
https://trello.com/b/sao0qrwq/shork

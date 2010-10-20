# Butterfly

butterfly (/ˈbʌtəflaɪ/)

   1. _A flying insect of the order Lepidoptera, distinguished from moths by their diurnal activity and generally brighter colouring._
   2. _A life-enhancing __code generator__ for everyday use._
   
## Installation

    sudo gem install butterfly
    
As [lep][2] (/ˈlɛp/) is a synonym for [butterfly][1], you may set a shortcut alias in your `bashrc` file:

    alias lep='butterfly $1'
    

## jQuery Generators

generate code for a jquery plugin:

    butterfly <plugin-name> jquery --plugin

## Heroku Generators

generate code for a static page on heroku:

    butterfly <page-name> heroku --static
    
generate code for a sinatra application on heroku:

    butterfly <app-name> heroku --sinatra
    
    
    
[1]: http://en.wiktionary.org/wiki/butterfly "Butterfly on Wiktionary"
[2]: http://en.wiktionary.org/wiki/lep "Lep on Wiktionary"

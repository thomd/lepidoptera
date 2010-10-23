# butterfly

butterfly (/ˈbʌtəflaɪ/)

   1. _A flying insect of the order Lepidoptera, distinguished from moths by their diurnal activity and generally brighter colouring._
   2. _A life-enhancing __code generator__ for everyday use._
   
## Installation

    sudo gem install butterfly
    
As [lep][wiki-2] (/ˈlɛp/) is a synonym for [butterfly][wiki-1], you may set a shortcut alias in your `.bashrc` file:

    alias lep='butterfly $1'
    
## Usage

    butterfly [options] <generator> <type> <project-name>

With the following options:

    -q, --quiet                      Suppress status output.
    -g, --git                        Create an empty git repository.
    -h, --help                       Print generator's options and usage.
    -v, --version                    Print version.
        
## jQuery Generators

generate code for a jquery plugin:

    butterfly jquery plugin <plugin-name>

## Heroku Generators

generate code for a static page on heroku:

    butterfly heroku static <page-name>
    
generate code for a sinatra application on heroku:

    butterfly heroku sinatra <app-name>
    
    
    
[wiki-1]: http://en.wiktionary.org/wiki/butterfly "Butterfly on Wiktionary"
[wiki-2]: http://en.wiktionary.org/wiki/lep "Lep on Wiktionary"
[jqry]: http://jquery.org "jQuery"
[hrk]: http://heroku.com "Heroku"


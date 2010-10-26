# butterfly

butterfly (/ˈbʌtəflaɪ/)

   1. _A flying insect of the order Lepidoptera, distinguished from moths by their diurnal activity and generally brighter colouring._
   2. _A life-enhancing __code generator__ for everyday use._

### What is butterfly?

butterfly is an easy extensible __code generator for common every day projects__.  
All code generators are structured in __generator groups__ which are based on a technology (for example jquery or heroku hosted projects), whereas every group can have multiple __generator types__ of projects.

For the time being, butterfly has code generators for projects like:

   * [jquery][j] plugins, 
   * static pages hosted on [heroku][h], 
   * [sinatra][s] application hosted on [heroku][h].

## Installation

    sudo gem install butterfly
    
As [lep][wiki-2] (/ˈlɛp/) is a synonym for [butterfly][wiki-1], you may set a shortcut alias in your `.bashrc` file:

    alias lep='butterfly $1'
    
## Usage

    butterfly [options] <generator-group> <generator-type> <project-name>

with the following __options__:

    -q, --quiet              Suppress status output.
    -g, --git                Create an empty git repository after code generation.
    -n, --new                Add a new 
    -h, --help               Print generator's options and usage.
    -v, --version            Print version.
 
and the following __code generator groups__:

    heroku
    jquery
  
### Helpers

Get a list of all code generator groups:

    butterfly

Get a list of all code generator types for a given generator group:

    butterfly <generator-group>

If no project name is given, the current folder name is used as project name:

    butterfly <generator-group> <generator-type>

# Generators
        
## jQuery Generators

get List of all jquery generators:

    butterfly jquery

generate code for a jquery plugin:

    butterfly jquery plugin <plugin-name>

## Heroku Generators

get List of all heroku generators:

    butterfly heroku

generate code for a static page on heroku:

    butterfly heroku static <page-name>
    
generate code for a sinatra application on heroku:

    butterfly heroku sinatra <app-name>
    
# Extend Code Generators

butterfly is based on _Nic Williams_ Ruby generator framework [rubigen][r].

### add new generator



# License

MIT License
    
    
[wiki-1]: http://en.wiktionary.org/wiki/butterfly "Butterfly on Wiktionary"
[wiki-2]: http://en.wiktionary.org/wiki/lep "Lep on Wiktionary"
[j]: http://jquery.com/ "jQuery: The Write Less, Do More, JavaScript Library"
[h]: http://heroku.com/ "eroku | Ruby Cloud Platform as a Service"
[s]: http://www.sinatrarb.com/ "Sinatra"
[r]: http://rubigen.rubyforge.org/ "rubigen - Ruby Generator Framework"


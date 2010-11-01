butterfly
=========

butterfly (/ˈbʌtəflaɪ/)

   1. _A flying insect of the order Lepidoptera, distinguished from moths by their diurnal activity and generally brighter colouring._
   2. _A life-enhancing __code generator__ for everyday use._

What is butterfly?
------------------

butterfly is a very simple and easy extensible __code generator for common every day projects__.  
All code generators integrated into this project are structured in __generator groups__, which are based on a technology (for example jquery or heroku hosted projects), whereas every group can have multiple __generator types__ of projects.

For the time being, butterfly has code generators for projects like:

   * [jquery][j] plugins, 
   * static pages hosted on [heroku][h], 
   * [sinatra][s] application hosted on [heroku][h].

Installation
------------

    $ sudo gem install butterfly
    
As [lep][wiki-2] (/ˈlɛp/) is a synonym for [butterfly][wiki-1], you may set a shortcut alias in your `.bashrc` file:

    $ alias lep='butterfly $1'
    
Usage
-----

for grouped code generators:

    butterfly [options] <generator-group>:<generator-type> <project-name>

or for ungrouped code generators:

    butterfly [options] <generator-type> <project-name>

with the following __options__:

    -q, --quiet              Suppress status output.
    -g, --git                Create an empty git repository after code generation.
    -n, --new                Add a new code generator in ~/.butterfly
    -h, --help               Print generator's options and usage.
    -v, --version            Print version.
 
and - for the time being - the following __code generators__:

    heroku:static
    heroku:sinatra
    jquery:plugin
  
Helpers
-------

Get a list of all code generators grouped by generator-groups:

    $ butterfly

Get a list of all code generator-types for a given generator-group:

    $ butterfly <generator-group>

If no project name is given, the current folder name is used as project name:

    $ butterfly <generator-group>:<generator-type>

Extending Code Generators
-------------------------

Since butterfly is based on _Nic Williams_ Ruby generator framework [rubigen][r], it is very simple to add new own private code generators.

You may include new code generators by putting the following code structure into `~/.butterfly`:

    .butterfly
    └─ name
       ├─ USAGE
       ├─ name_generator.rb
       └─ template
          ├─ a file
          ├─ ...
          └─ a folder

Much more easy is to use a generator generator which generates the above structure:

    $ butterfly code:generator <name-of-code-generator>

Integrated Code Generators
==========================
        
jQuery Generators
-----------------

get List of all jquery generators:

    butterfly jquery

generate code for a jquery plugin:

    $ butterfly jquery:plugin <plugin-name>

Heroku Generators
-----------------

get List of all heroku generators:

    $ butterfly heroku

generate code for a static page on heroku:

    $ butterfly heroku:static <page-name>
    
generate code for a sinatra application on heroku:

    $ butterfly heroku:sinatra <app-name>
    
License
=======

Copyright 2010 Thomas Duerr (me@thomd.net)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    
    
[wiki-1]: http://en.wiktionary.org/wiki/butterfly "Butterfly on Wiktionary"
[wiki-2]: http://en.wiktionary.org/wiki/lep "Lep on Wiktionary"
[j]: http://jquery.com/ "jQuery: The Write Less, Do More, JavaScript Library"
[h]: http://heroku.com/ "eroku | Ruby Cloud Platform as a Service"
[s]: http://www.sinatrarb.com/ "Sinatra"
[r]: http://rubigen.rubyforge.org/ "rubigen - Ruby Generator Framework"


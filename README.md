lepidoptera
===========

Lepidoptera /ˌlɛpɪˈdɒptərə/

1. _an order of insects that comprises the butterflies and moths. They have four large scale-covered wings that bear distinctive markings, and larvae that are caterpillars._ ORIGIN _modern Latin (plural), from Greek lepis, lepid- ‘scale’ + pteron ‘wing.’_

2. _A life-enhancing __code generator__ for everyday use._

What is lepidoptera?
--------------------

Lepidoptera is a very simple and easy extensible __code generator for common every day projects__.  
Technically, Lepidoptera is a wrapper for [rubigen][r] which allows setting up code templates for arbitrary projects.

Code generators integrated into Lepidoptera are structured in __generator groups__, whereas every group can have multiple __generator types__.

For the time being, Lepidoptera has code generators for the following projects (more to come):

   * [jquery][j] plugins, 
   * static pages hosted on [heroku][h], 
   * [sinatra][s] application hosted on [heroku][h].

Installation
------------

    $ sudo gem install lepidoptera

As [lep][wiki-2] (/ˈlɛp/) is a short for [lepidoptera][wiki-1], this gem will install an executable `lep`

For estetic reasons, you may also set a synonym executable `butterfly` alias in your `.bashrc` file:

    $ alias butterfly='lep $1'
    
Usage
-----

for grouped code generators:

    lep [options] <generator-group> <generator-type> <project-name>

or for ungrouped code generators:

    lep [options] <generator-type> <project-name>

with the following __options__:

    -q, --quiet              Suppress status output.
    -g, --git                Create a git repository after code generation.
    -n, --new                Add a new code generator in ~/.lepidoptera
    -h, --help               Print generator's options and usage.
 
and - for the time being - the following __code generators__ which are included in this gem:

    heroku static
    heroku sinatra
    jquery plugin
  
Helpers
-------

Get a list of all code generators grouped by generator-groups:

    $ lep

Get a list of all code generator-types for a given generator-group:

    $ lep <generator-group>

Extending Code Generators
-------------------------

Since lepidoptera is based on _Nic Williams_ Ruby generator framework [rubigen][r], it is very simple to add new own private code generators.

You may include new code generators by putting the following code structure into `~/.lepidoptera`:

    ~/.lepidoptera
      └─ name
         ├─ INFO
         ├─ name_generator.rb
         └─ template
            ├─ a file
            ├─ ...
            └─ a folder

Much more easy is to use a generator generator which generates the above code generator stub into `~/.lepidoptera`: (TODO)

    $ lep -n <type-of-code-generator>
    $ lep -n <code-generator-group> <type-of-code-generator>

Integrated Code Generators
==========================
        
jQuery Generators
-----------------

get List of all jquery generators:

    $ lep jquery

generate code for a jquery plugin:

    $ lep jquery plugin <plugin-name>

Heroku Generators
-----------------

get List of all heroku generators:

    $ lep heroku

generate code for a static page on heroku:

    $ lep heroku static <page-name>
    
generate code for a sinatra application on heroku:

    $ lep heroku sinatra <app-name>

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
    
    
[wiki-1]: http://en.wikipedia.org/wiki/Lepidoptera "Lepidoptera on Wiktionary"
[wiki-2]: http://en.wiktionary.org/wiki/lep "Lep on Wiktionary"
[j]: http://jquery.com/ "jQuery: The Write Less, Do More, JavaScript Library"
[h]: http://heroku.com/ "heroku | Ruby Cloud Platform as a Service"
[s]: http://www.sinatrarb.com/ "Sinatra"
[r]: http://rubigen.rubyforge.org/ "rubigen - Ruby Generator Framework"


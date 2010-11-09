lepidoptera
===========

Lepidoptera /ˌlɛpɪˈdɒptərə/

1. _an order of insects that comprises the butterflies and moths. They have four large scale-covered wings that bear distinctive markings, and larvae that are caterpillars._ ORIGIN _modern Latin (plural), from Greek lepis, lepid- ‘scale’ + pteron ‘wing.’_

2. _A life-enhancing __code generator__ for everyday use._

What is lepidoptera?
--------------------

Lepidoptera is a simple and easy to extend __code generator for common every day projects__.  
Technically, Lepidoptera is a wrapper for [rubigen][r] which allows setting up code templates for arbitrary projects.

Lepidopteras code generators are structured in __generator groups__. A generators group is just a container for multiple generators, where as a generator is also called a __generator type__.

For the time being, Lepidoptera has code generators for the following project types (more to come):

* [jquery][j] generators:
  * jquery plugin 
* [heroku][h] generators:
  * static pages 
  * a [sinatra][s] application

Installation
------------

    $ sudo gem install lepidoptera

As [lep][wiki-2] (/ˈlɛp/) is a short for [lepidoptera][wiki-1], this gem will install an executable `lep`

For aesthetic reason, you may also set a synonym alias `butterfly` in your `.bashrc` file:

    alias butterfly='lep $1'
    
Usage
-----

    $ lep [options] <generator-group> <generator-type> <project-name>

with the following __options__:

    -q, --quiet              Suppress status output.
    -n, --new                Create a new code generator stub in ~/.lepidoptera.
    -g, --git                Create a git repository after code generation.
    -h, --help               Print generator's options and usage.
 
### Helpers

Get a list of all local code generator groups:

    $ lep

Get a list of all code generators for a given generator group:

    $ lep <generator-group>

Extending with own Code Generators
----------------------------------

Since lepidoptera is based on _Nic Williams_ Ruby generator framework [rubigen][r], it is very simple to add new own private code generators.

### 1. Manual creation of new a code generator

Your own private code generators must reside in a folder `~/.lepidoptera`.

A new generator must satisfy the following code structure:

    .lepidoptera
    └─ <generator-group>_generators
       └─ <generator-type>
          ├─ INFO
          ├─ <generator-type>_generator.rb
          └─ templates
             ├─ ...
             └─ ...

whereas every code generator type must contain the following files:

* an optional `INFO` file containing some additional project info to be displayed after the generation.
* a required generator file `<generator-type>_generator.rb` which contains the generation rules.
* a required templates folder `templates` which may contain multiple ERB templates for the code to be generated.  
  These ERB templates may contain variables as placeholders for the following information:
  * `<%= name %>`: Name of the project.
  * `<%= author %>`: Author of the project (OS Username).

### 2. Automatic creation of new a code generator

An easier way to create a new code generator is to automatically generate the above code generator stub into `~/.lepidoptera`.

To create a new code generator stub, use the `--new` option and provide a __generator group__ and a __generator type__:

    $ lep -n <generator-group> <generator-type>
    
If the generator group does not exist already, a group folder `<generator-group>_generators` will be created.

Embedded Code Generators
========================

The following code generators are currently embedded within this project:
        
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


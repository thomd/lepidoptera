<%= name %>
===========

A static page for deployment on [heroku][1]:

Author: <%= author %>

Deployment
----------

    $ git init
    $ ...
    $ heroku create <%= name %>
    § git push heroku master

Meta
----

the `index.html` loads a [CSS Reset][2] and the [jQuery 1.4.3][3] library.


[1]: http://heroku.com/  "Heroku"
[2]: http://code.google.com/p/reset5/  "HTML5 CSS Reset"
[3]: http://jquery.com/  "jquery.com"

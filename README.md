Brunch With Grits
=================

What is this project?
--------------------

This is a brunch skeleton which provides the following tools:

- jQuery
- LoDash
- Backbone
- Marionette

How do I use it?
----------------

After installing [brunch][brunch], run the following command to create a new
project in a directory named *example*:

    brunch new example -s git://github.com/monokrome/brunch-with-grits.git

*NOTE: You can replace the word example with whichever directory name you'd
like to use for your project.*

After the project has finished being created, you can initialize
it like so:

    cd example
    npm install

If it all worked out, you should be able to build all libraries into the
**public/javascripts/vendor.js** with the following command:

    brunch build

You can also have [brunch][brunch] automatically minify the output with:

    brunch build --optimize

If you prefer to leave a process constantly watching your code for changes,
you can use the following command:

    brunch watch

Having a static server hosting your public directory is sometimes useful for
development. You can do this by running the following command:

    brunch watch --server

This will run a local server on port 3333. Once it's running, you can visit
your application at [http://localhost:3333](http://localhost:3333).

If you have any other questions about using [brunch][brunch], [read more
about it here][brunch].

[brunch]: http://brunch.io "http://brunch.io"

# Railslove Suspenders
<!-- [![Build Status](https://secure.travis-ci.org/thoughtbot/suspenders.png?branch=master)](http://travis-ci.org/thoughtbot/suspenders) -->

Suspenders is the base Rails application used at [railslove](http://railslove.com) originally developed at [thoughtbot](http://thoughtbot.com/community).

Installation
------------

First install the suspenders gem:

    gem install railslove-suspenders

Then run:

    railslove-suspenders projectname

This will create a Rails 3.2 app in `projectname`. This script creates a
new git repository. It is not meant to be used against an existing repo.

Gemfile
-------

To see the latest and greatest gems, look at Suspenders'
[templates/Gemfile_clean](templates/Gemfile_clean),
which will be appended to the default generated projectname/Gemfile.

It includes application gems like:

* [Airbrake](https://github.com/airbrake/airbrake) for exception notification
* [Smurfville](https://github.com/railslove/smurfville) for dynamic color guide and more
* [Compass](https://github.com/chriseppstein/compass) for css3 mixins

And testing gems like:

* [Mocha](https://github.com/freerange/mocha) for stubbing and spying
* [Capybara](https://github.com/jnicklas/capybara) and
  [Capybara Webkit](https://github.com/thoughtbot/capybara-webkit) for
  integration testing
* [Factory Girl](https://github.com/thoughtbot/factory_girl) for test data
* [RSpec](https://github.com/rspec/rspec) for unit testing
* [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) for common
  RSpec matchers
* [Timecop](https://github.com/jtrupiano/timecop-console) for testing time

Other goodies
-------------

Suspenders also comes with:

* Override recipient emails in staging environment.
* Rails' flashes set up and in application layout.
* A few nice time formats set up for localization.
* [Heroku-recommended asset pipeline
  settings](https://devcenter.heroku.com/articles/rails3x-asset-pipeline-cedar/).

Heroku
------

You can optionally create Heroku staging and production apps:

    suspenders app --heroku true

This has the same effect as running:

    heroku create app-staging --remote staging
    heroku create app-production --remote production

Github
------

You can optionally create a Github repository:

    suspenders app --github organization/project

This has the same effect as running:

    hub create organization/project

Dependencies
------------

Suspenders requires Ruby 1.9.2 or greater.

Some gems included in Suspenders have native extensions. You should have GCC
installed on your machine before generating an app with Suspenders.

Use [OS X GCC Installer](https://github.com/kennethreitz/osx-gcc-installer/) for
Snow Leopard (OS X 10.6).

Use [Command Line Tools for XCode](https://developer.apple.com/downloads/index.action)
for Lion (OS X 10.7) or Mountain Lion (OS X 10.8).

We use [Capybara Webkit](https://github.com/thoughtbot/capybara-webkit) for
full-stack Javascript integration testing. It requires QT. Instructions for
installing QT are
[here](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit).

PostgreSQL needs to be installed and running for the `db:create` rake task.

Issues
------

If you have problems, please create a
[Github Issue](https://github.com/thoughtbot/suspenders/issues).

Contributing
------------

Please see CONTRIBUTING.md for details.

Credits
-------

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Suspenders is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for thoughtbot are trademarks of thoughtbot, inc.

License
-------

Suspenders is Copyright © 2008-2013 thoughtbot. It is free software, and may be
redistributed under the terms specified in the LICENSE file.

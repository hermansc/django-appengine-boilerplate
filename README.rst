Quick-start
===========

1. command::

        git clone git@github.com:lordlarm/django-appengine-boilerplate.git

2. command::

        cd django-appengine-boilerplate

3. command::

        sh setup.sh

... Wait for the script to finish. Try with sudo if it gives permission errors. 
4. Test that it all works by "cd src/" and "python manage.py runserver"
5. Bonus: could be a good idea to create a superuser too; "python manage.py createsuperuser"

Deploy
======

When deploying you should only deploy the src/ folder, which should contain ~2000 files. 

What does it do?
================

The setup.sh script, basically just runs a bunch of commands i a series.

First, it downloads the following frameworks:
* `django-nonrel <http://bitbucket.org/wkornewald/django-nonrel/get/tip.zip>`_
* `djangoappengine <http://bitbucket.org/wkornewald/djangoappengine/get/tip.zip">`_
* `djangotoolbox <http://bitbucket.org/wkornewald/djangotoolbox/get/tip.zip>`_
* `django-autoload <http://bitbucket.org/twanschik/django-autoload/get/tip.zip>`_
* `django-dbindexer <http://bitbucket.org/wkornewald/django-dbindexer/get/tip.zip>`_

Second, it deletes docs/ extras/ scripts/ etc. from the django-nonrel installation and creates a backup of it in lib/
Same goes for the other frameworks: extract the module, create backup in lib/

In the end it just counts the total files in the src/ folder, which is to be deployed. 

Contribute
==========
Feel free to fork, contribute and contact me with ideas.

# React App Boilerplate

A React app to do something.

# Dev Setup

Run ```./scripts/setup.sh``` to download required tools and libraries.

Next run ```./scripts/dev_server.sh``` to bundle the site and launch a HTTP server.  Now you can view your changes by opening http://127.0.0.1:8080 in your browser of choice.

# Releasing your App

When you are ready to release, run ```./scripts/build_release.sh```, this will minifiy the bundled JS and CSS scripts, and copy all the required files into the directory ```release```.  The ```release``` dir can then be deployed to your web server.

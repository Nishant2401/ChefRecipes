# ChefRecipes


This is a simple recipe which installs Apache server on Linux machine, installs and starts the Apache service, and finally adds a system user 'testsystemuser' for the Operating System. 

To Run:
It can be run on a Chef Workstation by firing the command:
> chef-apply apacheinstall.rb


To test the Apache server:
Simply request the index.html (overwritten by the receipe) from Apache:
> curl localhost

It should display the index.html saying hello world.


To check if user has been created:
Just lookup in the passwd file if testsystemuser exists:
> cut -d: -f1 /etc/passwd


Please note: I wrote this on Ubuntu, if youre running this on cent OS, Apache service would be httpd

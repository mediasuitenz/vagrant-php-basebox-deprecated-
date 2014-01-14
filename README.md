vagrant-php-basebox
===================

Standardises development environment for php projects

## Packaging a new version of the box

Perform the following commands to

- ```cd <repo-root>``` (where this file is located)
- ```git pull origin master``` to get any changes
- ```vagrant destroy```
- ```vagrant up```
- ```vagrant provision``` (try this several times if it fails for some reason)
- ```rm vagrant-php-basebox.box``` (only necessary if this file is present)
- ```scripts/package``` (exports the provisioned vm into the file vagrant-php-basebox.box)
- ```scripts/add_box_locally``` (adds vagrant-php-basebox.box to the vagrant registry)

Once that has all completed you will have a new version of the php base box available globally
for use in vagrant projects. Edit the Vagrantfile for your project to set the base box.

## Using php-base-box

For vagrant projects that are using older versions of php-base-box, all you need
to do to update them is:

- ```cd <project-root>```
- ```vagrant destroy```
- ```vagrant up```
- ```vagrant provision```

vagrant-php-basebox
===================

Standardises development environment for php projects

## Packaging a new version of the box

Perform the following commands to

- ```cd <repo-root>``` (where this file is located)
- ```git pull origin master``` to get any changes
- ```vagrant destroy```
- ```vagrant up```
- ```vagrant provision``` (may need to try this several times)
- ```rm vagrant-php-basebox.box```
- ```scripts/package```
- ```scripts/add_box_locally```

Once that has all completed you will have a new version of the php base box available
for use in vagrant projects.

## Using php-base-box

For vagrant projects that are using older versions of php-base-box, all you need
to do to update them is:

- ```cd <project-root>```
- ```vagrant destroy```
- ```vagrant up```
- ```vagrant provision```

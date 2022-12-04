# Fedora 28 Workstation
 Minimum Instalation for developers.	
We use [Vagrant](https://developer.hashicorp.com/vagrant) to have the VM configuration as code.
[Virtual Box](https://www.virtualbox.org/) as VM provider.

## Oh my Zsh
Before you scream Oh My Zsh! look over the `.zshrc` file to select plugins, themes, and options.

## Sudo privileges
Edit the sudoers file ading the following entry:
`dudo visudo` Open the sudoers file
`erick.quinteros	ALL=(ALL)	ALL` Put this entry below root user

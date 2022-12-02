# VAGRANT
## Ojective
Create a Development Environment from scratch, avoiding the actual need of migrate everything.
Avoid the risk of lose the environment on migrations.

## Requirements

### VAGRANT

**URL:** * [vagrant](https://www.vagrantup.com/)
**HashiCorp Vagrant** provides the same, easy workflow regardless of your role as a developer, operator, or designer. 
It leverages a declarative configuration file which describes all your software requirements, packages, operating system configuration, users, and more.
* [virtualBox](https://www.virtualbox.org/)

### VIRTUALBOX

**URL:** **VirtualBox** is a general-purpose full virtualizer for x86 hardware, targeted at server, desktop and embedded use.
For a thorough introduction to virtualization and VirtualBox, please refer to the online version of the VirtualBox User Manual's first chapter.
[Oracle Site Manual of VirtualBox](https://www.virtualbox.org/manual/ch01.html)

## Implementation

### VAGRANT File

The primary function of the **Vagrantfile** is to describe the type of machine required for a project, and how to configure and provision these machines.
In order to get full privileges of Vagrant we need to understand what is a [Vagrant File](https://www.vagrantup.com/docs/vagrantfile)

### Using SSH to access the VM
`vagrant connect --ssh NAME` where NAME is the name of the VM
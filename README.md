# MashPress VWD

MashPress VWD stands for Vagrant Wordpress Development and is loosely based off the [Vagrant Drupal Development] (https://www.drupal.org/project/vdd).

## Assumptions

* You'll need to have virtualbox and vagrant installed.
* Homebrew:
  * `brew install virtualbox` and `brew install vagrant`
* Make sure you pull the Wordpress submodule with `git submodule init` and `git submodule update`

## Getting Started

1. Fork or clone the repository.
2. Update the submodules using `git submodule init` and `git submodule update`
   * This will clone WordPress into the `www/wp` directory.
3. Run `vagrant up` and cross your fingers.
   * **You'll need to type in your password when vagrant tries to mount the nfs directories**
   
### Useful Vagrant Commands

* Bring up the virtual machine: `vagrant up`
* Provision the virtual machine: `vagrant provision`
  * This is useful if the inital install fails for whatever reason and you need to run it again.
* Stop the VM temporarily: `vagrant suspend`
* Shut down the VM: `vagrant halt`
* Destroy the VM and delete the vhd: `vagrant destroy`

## Vagrant Server Details

* Vagrant will mount the `www/` directory into the virtual machine's `var/www`
* `var/www/wp` is the WordPress submodule location. Again make sure you import it.
* Vagrant will attempt to forward localhost port 8080 to the virtual machine web server. If this port is not available, vagrant will search for a free one.
* The default server location is `192.168.0.100` and can be configured in `config.json`

### MySQL Server

* root username: root
* root password: root

### Available Software

* phpmyadmin is installed and available at `http://localhost:8080/phpmyadmin`
* webgrind is installed and available at `http://localhost:8080/webgrind`

## WordPress Skelton

The [WordPress Skelton] (https://github.com/markjaquith/WordPress-Skeleton) is used to better organize the WordPress directory. The uploads symlink has been removed because why not commit your uploads directory?

## Questions & Answers

**Q:** How do I remove the `/wp` from the url?  
**A:** If you would like to remove the `/wp` from the url then simply change the site url config option in the WordPress admin panel.

**Q:** I'm getting a php error when trying to view the site!  
**A:** Chances are that you forgot to run `git submodule init` and `git submodule update` when cloning the repository. You need WordPress!

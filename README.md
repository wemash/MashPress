# MashPress VWD

MashPress VWD stands for Vagrant Wordpress Development and is loosely based off the [Vagrant Drupal Development] (https://www.drupal.org/project/vdd).

## Assumptions

* You'll need to have virtualbox and vagrant installed.
* Homebrew `brew install virtualbox` and `brew install vagrant`
* Make sure you pull the Wordpress submodule with `git submodule init` and `git submodule update`

## Server Setup

* Vagrant will mount the `www/` directory into the virtual machine's `var/www`
* `var/www/wp` is the WordPress submodule location. Again make sure you import it.
* Vagrant will attempt to forward localhost port 8080 to the virtual machine web server. If this port is not available, vagrant will search for a free one.
* The default server location is `192.168.0.100` and can be configured in `config.json`

### MySQL Server

* root username: root
* root password: root

### PHPMyAdmin

* phpmyadmin is installed and available at `http://localhost:8080/phpmyadmin`
* webgrind is installed and available at `http://localhost:8080/webgrind`

## WordPress Skelton

The [WordPress Skelton] (https://github.com/markjaquith/WordPress-Skeleton) is used to better organize the WordPress directory. The uploads symlink has been removed because why not commit your uploads directory?

## Questions & Answers

**Q:** How do I remove the /wp from the url?
**A:** If you would like to remove the /wp from the url then simply change the site url config option in the WordPress admin panel.

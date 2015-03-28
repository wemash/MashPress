<?php

/**
 * Here we're going to define our default database. When vagrant up is run for
 * the first time it will run CREATE SCHEMA IF NOT EXISTS wordpress so that the
 * database can be primed for the install.
 */

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', 'root' );
define( 'DB_HOST', 'localhost' );

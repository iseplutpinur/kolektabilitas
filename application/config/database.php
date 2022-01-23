<?php
defined('BASEPATH') or exit('No direct script access allowed');

$active_group = 'default';
$query_builder = TRUE;


$db['default'] = array(
	'dsn'	=> '',
	'hostname' => 'localhost',
	'username' => 'almardiy_elektabilitas',
	'password' => 'almardiy_elektabilitas',
	'database' => 'almardiy_elektabilitas',
	'username' => 'root',
	'password' => '',
	'database' => 'elektabilitas',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'production'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => FALSE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**********************************************************************
* Author: Derek Bolger
* Assignment: WE4.0 Server-side	Web	Development, Digital Skills	Academy
* Student ID: D14127405
* Date: 2016/07/27
* Ref: https://www.codeigniter.com/userguide3/libraries/output.html
***********************************************************************/ 

	//echo the array defined in characters controller and convert it to a json string
	//echo json_encode($characters);

	//format the json output to be more readable for testing, using CodeIgniter output class
	$this->output
		->set_content_type('application/json', 'utf-8')
		->set_output(json_encode($characters, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES))
		->_display();
	exit; //Calling this method manually without aborting script execution will result in duplicated output so we use exit.

?>
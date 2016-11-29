<?php defined('BASEPATH') OR exit('No direct script access allowed');

/************************************************************************************
* Author: Derek Bolger
* Assignment: WE4.0 Server-side	Web	Development, Digital Skills	Academy
* Student ID: D14127405
* Date: 2016/07/27
* Ref: https://www.codeigniter.com/userguide3/general/controllers.html
* Ref: https://www.codeigniter.com/userguide3/general/models.html#auto-loading-models
* Ref: https://www.codeigniter.com/userguide3/general/controllers.html#methods
* Ref: https://www.codeigniter.com/userguide3/libraries/loader.html
* Code reuse: WE4.0_A_SSWD_08_Workshop_CI some code recyled from this workshop
*************************************************************************************/

class Characters extends CI_Controller  {

	/* Loads get_characters as default function, this gives us a tidier first endpoint URL to use to display 
	all of the returned json as Characters is set as the default controller in routes.php. So aswell as 
	http://localhost/Web_Service/index.php/characters/get_characters we have it display from 
	http://localhost/Web_Service/ as an endpoint courtesy of CI */
	public function index(){

		$this->get_characters();
	}
    
	//First function to push all characters and all of their elements into the $data['characters'] array
	public function get_characters(){

		//load in the model. You can tell the model loading method to auto-connect by passing TRUE (boolean) via 
		//the third parameter, and connectivity settings, as defined in the database config file will be used.
		$this->load->model('Characters_model', '', TRUE);

		//array to store output from the DB
		$data['characters'] = array();

		/* Loop through the array returned from the get_characters method from the Characters_model  
		and using the $value variable we can get the data from each field stored in the database */
		foreach($this->Characters_model->get_characters() as $key => $value){
			array_push($data['characters'], array('id' => $value->id,
												  'name' => $value->name,
												  'img' => $value->img, 
												  'bio' => $value->bio,
												  'status' => $value->status,
												  'house' => $value->house));		
		}

		//characters_output is loaded and $data array passed into the view
		$this->load->view('characters_output', $data);
	
	}

	//Second function to push an individual character and all of its elements into the $data['characters'] array
	public function get_character($character_id){

		//load in the model
		$this->load->model('Characters_model', '', TRUE);

		//array to store output from the DB
		$data['characters'] = array();

		/* Loop through the array returned from the get_character method from the Characters_model  
		and using the $value variable we can get the data from each field store in the database 
		as I am only interested in individual characters $character_id is passed as a parameter */
		foreach($this->Characters_model->get_character($character_id) as $key => $value) {
			array_push($data['characters'], array('id' => $value->id,
												  'name' => $value->name,
												  'img' => $value->img, 
												  'bio' => $value->bio,
												  'status' => $value->status,	
												  'house' => $value->house));		
		}

		//characters_output is loaded and $data array passed into the view
		$this->load->view('characters_output', $data);
	}

	//Third function to push a characters single array element into the $data['characters'] array i.e., name in this case
	public function get_Name($character_name){
	
		//load in the model
		$this->load->model('Characters_model', '', TRUE);

		//array to store output from the DB
		$data['characters'] = array();

		/* Loop through the array returned from the get_name method from the Characters_model  
		and using the $value variable we can get the data from each field store in the database as I 
		am only interested in individual characters ELEMENTS $character_name is passed as a parameter */
		foreach($this->Characters_model->get_character($character_name) as $key => $value){
			array_push($data['characters'], array('name' => $value->name));		
		}

		//characters_output is loaded and $data array passed into the view
		$this->load->view('characters_output', $data);
	}
}
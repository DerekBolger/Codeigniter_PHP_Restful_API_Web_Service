<?php

/**************************************************************************************************************************************
* Author: Derek Bolger
* Assignment: WE4.0 Server-side	Web	Development, Digital Skills	Academy
* Student ID: D14127405
* Date: 2016/07/27
* Ref: https://www.codeigniter.com/userguide3/general/models.html
* Ref: http://stackoverflow.com/questions/33489659/return-the-columns-of-a-result-row-as-an-array-that-can-be-referenced-by-index-i?rq=1
* Code reuse: WE4.0_A_SSWD_08_Workshop_CI some code recyled from this workshop
****************************************************************************************************************************************/

class Characters_model extends CI_Model {

	// Call the CI_Model constructor if we add a constructor to our own controller, we override the parent.
	function __construct(){
		
		parent::__construct();
	}

	/* Sql query of characters DB, selects entire DB and returns all of 
	the character table fields passed from controller into result array */
	function get_characters(){
		
		//characters is the name of the table in the database to query.
        $query = $this->db->get('characters');

        //selects columns and returns all records into result array
        $this->db->select('id, name, img, bio, status, house');

        //return the result.
        return $query->result(); 
    }

	/* Sql query of characters DB, selects entire row according to the primary DB key of id and returns 
	individual character depending on $character_id variable passed from controller into result array */
	function get_character($character_id){

		$this->db->from('characters');
    	$this->db->where('id', $character_id);
		$query = $this->db->get();
        return $query->result();	
	}

	/* Sql query of characters DB, selects name field and returns record depending 
	on the $character_name variable passed from controller into result array */
	function get_name($character_name){

        $this->db->select('name'); 	
		$this->db->from('characters');
    	$this->db->where('name', $character_name);
		$query = $this->db->get();
        return $query->result();	
	}
}

?>
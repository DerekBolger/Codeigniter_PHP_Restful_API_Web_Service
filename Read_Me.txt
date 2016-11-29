My Endpoints:

1. Returns all of the contents of the database characters table.
http://localhost/Web_Service/index.php/characters/get_characters

2. Returns an idividual character row from the database table, there are 30 character
rows so the last parameter could be substituted for a number between 1 and 30.
http://localhost/Web_Service/index.php/characters/get_character/1

3. Returns an idividual character array element.
http://localhost/Web_Service/index.php/characters/get_name/1

Endpoint 1 is also set to display by default at http://localhost/Web_Service utilising CodeIgniter's
default index function and routes.php is set to display the Characters controller by default.

Note To Self:

We could be remove index.php segment from the above URL's using mod_rewrite by moving my edited .htaccess file from the applications folder 
into the root folder and change the index file reference in config.php > line 38 remove index.php from here 
$config['index_page'] = 'index.php';

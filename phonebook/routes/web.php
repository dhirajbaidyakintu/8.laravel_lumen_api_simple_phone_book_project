<?php

$router->post('/registration', 'RegistrationController@onRegister');
$router->post('/login', 'LoginController@onLogin');
//$router->post('/tokentest', ['middleware'=>'auth', 'uses'=>'LoginController@jwttokenTest']);
$router->post('/insert', ['middleware'=>'auth', 'uses'=>'PhoneBookController@onInsert']);
$router->post('/select', ['middleware'=>'auth', 'uses'=>'PhoneBookController@onSelect']);
$router->post('/delete', ['middleware'=>'auth', 'uses'=>'PhoneBookController@onDelete']);

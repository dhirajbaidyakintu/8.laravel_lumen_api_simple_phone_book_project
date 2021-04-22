<?php
namespace App\Http\Controllers;
use \Firebase\JWT\JWT;
use Illuminate\Http\Request;
use App\Models\RegistrationModel;
class LoginController extends Controller{
    /*
    function jwttokenTest(){
        return "Token Is Ok";
    }
    */
    function onLogin(Request $request){
        $key = env('TOKEN_KEY');
        $username= $request->input('username');
        $password= $request->input('password');
        $userCount= RegistrationModel::where(['username'=> $username, 'password'=>$password])->count();
        if($userCount == 1){
            $key = env('TOKEN_KEY');
            $payload = array(
                "site" => "http://demo.com",
                "user" => $username,
                "iat" => time(),
                "exp" => time()+5000
            );
            $jwt = JWT::encode($payload, $key);
            return response()->json(['Token'=>$jwt, 'Status'=>'Login Success']);
        }else{
            return 'Wrong Username and Password.';
        }
    }
}

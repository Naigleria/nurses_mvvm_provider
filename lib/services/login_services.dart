import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginWebservice {

  String? baseUrl =dotenv.env['BASE_URL'];

  Future<dynamic> loginApi(String username, String password) async {

    //final url = "http://www.omdbapi.com/?s=$keyword&apikey=YOURAPIKEY";

    var url = Uri.http(baseUrl!, 'api/auth/login/');

    try{
      final response = await http.post(url,
        body: {
          "email":username,
          "password":password
        }
      );
      if(response.statusCode == 202) {
        final prefs = await SharedPreferences.getInstance();
        var json = jsonDecode(response.body);
        await prefs.setString('Token', json["token"]);
        await prefs.setInt('user_id', json['id']);
        return json;

      } else{
        print("StatusCode not 202");
        return jsonDecode(response.body);
      }
    }catch(e){
      print("Login Service Exception");
      print(e);
    }



  }






}
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:semana11_2_networking_miercoles/api/ListaUsers.dart';
import 'package:semana11_2_networking_miercoles/api/User.dart';

class Service{

  static Future<List<User>> getUsers() async{

    final rspta=await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

    if(rspta.statusCode==200){
      final rsptaJSON=json.decode(rspta.body);
      final todoUsers=ListaUsers.listUsers(rsptaJSON['data']);
      return todoUsers;
    }

    return <User>[];
  }

}
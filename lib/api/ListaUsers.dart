import 'package:semana11_2_networking_miercoles/api/User.dart';

class ListaUsers{


  static List<User> listUsers(List<dynamic> listaJson){

    List<User> listadoUser=[];

    if(listaJson!=null){
      for(var u in listaJson){
        final usu=User.objJson(u);
        listadoUser.add(usu);
      }
    }

    return listadoUser;

  }
}
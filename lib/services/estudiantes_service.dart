import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:list_view_mafe/Config/global/enviroment.dart';
import 'package:list_view_mafe/models/estudiante.dart';

class EstudiantesService{
  
  Future<Estudiantes> obtenerTodos() async{
    try{
      print(Enviroment.api);
      var headers = {"Content-type": "application/json"};
      final response = await http.get(Uri.parse(Enviroment.api),headers: headers);
      print(response);
      if(response.statusCode == 200){
        final decoded = await json.decode(response.body);
        return Estudiantes.fromJson(decoded['data']);
    }
      return Estudiantes(estudiante: []);
    }catch(error){

    print(error);
    return Estudiantes(estudiante: []);
    }
    
  }
}
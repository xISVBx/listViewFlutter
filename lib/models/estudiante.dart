import 'dart:convert';


Estudiante estudianteFromJson(String str) => Estudiante.fromJson(json.decode(str));

String estudianteToJson(Estudiante data) => json.encode(data.toJson());

class Estudiante {
    String imagen;
    String nombre;
    String carrera;
    double promedio;

    Estudiante({
        required this.imagen,
        required this.nombre,
        required this.carrera,
        required this.promedio,
    });

    factory Estudiante.fromJson(Map<String, dynamic> json) => Estudiante(
        imagen: json["imagen"],
        nombre: json["nombre"],
        carrera: json["carrera"],
        promedio: json["promedio"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "imagen": imagen,
        "nombre": nombre,
        "carrera": carrera,
        "promedio": promedio,
    };
}
class Estudiantes{
  Estudiantes({required this.estudiante});

  final List<Estudiante> estudiante;

  factory Estudiantes.fromJson(List<dynamic> json){
    List<Estudiante> lista = json.map((student) => Estudiante.fromJson(student)).toList();
    return Estudiantes(estudiante: lista);
  }
}
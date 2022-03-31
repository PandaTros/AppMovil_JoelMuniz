import 'package:meta/meta.dart';
import 'dart:convert';

Club clubFromJson(String str) => Club.fromJson(json.decode(str));

String clubToJson(Club data) => json.encode(data.toJson());

class Club {
  Club({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.horario,
    required this.imagen,
  });

  final int id;
  final String nombre;
  final String direccion;
  final String telefono;
  final String horario;
  final String imagen;

  factory Club.fromJson(Map<String, dynamic> json) => Club(
    id: json["id"],
    nombre: json["nombre"],
    direccion: json["direccion"],
    telefono: json["telefono"],
    horario: json["horario"],
    imagen: json["imagen"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "direccion": direccion,
    "telefono": telefono,
    "horario": horario,
    "imagen": imagen,
  };
}
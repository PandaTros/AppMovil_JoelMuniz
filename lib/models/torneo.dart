import 'package:meta/meta.dart';
import 'dart:convert';

Torneo torneoFromJson(String str) => Torneo.fromJson(json.decode(str));

String torneoToJson(Torneo data) => json.encode(data.toJson());

class Torneo {
  Torneo({
    required this.id,
    required this.nombre,
    required this.descripccion,
    required this.numEquipos,
    required this.integrantes,
    required this.bases,
    required this.costo,
    required this.imagen,
  });

  final int id;
  final String nombre;
  final String descripccion;
  final String numEquipos;
  final String integrantes;
  final String bases;
  final String costo;
  final String imagen;

  factory Torneo.fromJson(Map<String, dynamic> json) => Torneo(
    id: json["id"],
    nombre: json["nombre"],
    descripccion: json["descripccion"],
    numEquipos: json["num_equipos"],
    integrantes: json["integrantes"],
    bases: json["bases"],
    costo: json["costo"],
    imagen: json["imagen"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "descripccion": descripccion,
    "num_equipos": numEquipos,
    "integrantes": integrantes,
    "bases": bases,
    "costo": costo,
    "imagen": imagen,
  };
}

import 'package:clubapi/models/torneo.dart';
import 'package:clubapi/pages/Clubs.dart';
import 'package:clubapi/pages/Index.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


Future<Torneo> createtorneo(String nombre, String descripccion, String num_equipos, String integrantes, String bases, String costo, String imagen) async {
  final response = await http.post(
    Uri.parse('http://apiclub.somee.com/api/Torneo/CrearTorneo'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'nombre': nombre,
      'descripccion': descripccion,
      'num_equipos': num_equipos,
      'integrantes': integrantes,
      'bases': bases,
      'costo': costo,
      'imagen': imagen,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Torneo.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Fallar al crear Torneo');
  }
}

class RegisterTorneos extends StatelessWidget {


  TextEditingController nombreController = TextEditingController();
  TextEditingController descripccionController = TextEditingController();
  TextEditingController num_equiposController = TextEditingController();
  TextEditingController integrantesController = TextEditingController();
  TextEditingController basesController = TextEditingController();
  TextEditingController costoController = TextEditingController();
  TextEditingController imagenController = TextEditingController();
  Future<Torneo>? _futuretorneo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Text(
              'Nuevo Torneo',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.lightBlueAccent),
            ),

            Divider(height: 40),
            TextField(
              controller: nombreController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Nombre',
                  labelText: 'Nombre del Torneo',
                  suffixIcon: Icon(
                      Icons.sports_baseball_sharp
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller:  descripccionController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Descripccion',
                  labelText: 'Descripccion del torneo',
                  suffixIcon: Icon(
                      Icons.format_list_numbered
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),


            SizedBox(height: 20),
            TextField(
              controller: num_equiposController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Equipos',
                  labelText: 'Numero de equipos',
                  suffixIcon: Icon(
                      Icons.people_alt_rounded
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),






            SizedBox(height: 20),
            TextField(
              controller: integrantesController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Integrantes',
                  labelText: 'Integrantes del torneo',
                  suffixIcon: Icon(
                      Icons.people_alt_rounded
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: basesController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Bases',
                  labelText: 'Bases del torneo',
                  suffixIcon: Icon(
                      Icons.rule
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: costoController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Costo',
                  labelText: 'Costo del Torneo',
                  suffixIcon: Icon(
                      Icons.payment_outlined
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),
            SizedBox(height: 20),
            TextField(

              controller: imagenController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'imagen',
                  labelText: 'Url de Imagen',
                  suffixIcon: Icon(
                      Icons.image_rounded
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              child: FlatButton(
                hoverColor: Colors.lightBlue,
                onPressed: (){
                  _futuretorneo = createtorneo(nombreController.text, descripccionController.text, num_equiposController.text, integrantesController.text, basesController.text, costoController.text, imagenController.text);
                  _showDialog(context);
                },
                child: Text('Registrar',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,


                  ),

                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.white70,
                    width: 1,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(50)),
              ),

            ),


          ],
        ),
      ),
      );

  }
}


void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Exito"),
        content: new Text("Se ha registrad un nuevo Torneo"),
        actions: <Widget>[
          new FlatButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home()
              ));
            },
          ),
        ],
      );
    },
  );
}





import 'dart:convert';

import 'package:clubapi/pages/Clubs.dart';
import 'package:clubapi/pages/Index.dart';
import 'package:clubapi/pages/Torneos.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:clubapi/models/clubs.dart';


Future<Club> createclub(String nombre, String direccion, String telefono, String horario, String imagen) async {
  final response = await http.post(
    Uri.parse('http://apiclub.somee.com/api/Club/CrearClub'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'nombre': nombre,
      'direccion': direccion,
      'telefono': telefono,
      'horario': horario,
      'imagen': imagen,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Club.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Fallar al crear Club');
  }
}
class RegisterClubs extends StatelessWidget {

  TextEditingController nombreController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController horarioController = TextEditingController();
  TextEditingController imagenController = TextEditingController();
  Future<Club>? _futureclub;

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
              'Nuevo Club',
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
                  hintText: 'Club',
                  labelText: 'Nombre del Club',
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
            controller: direccionController,

              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Direccion',
                  labelText: 'Direccion del club o evento',
                  suffixIcon: Icon(
                      Icons.my_location_rounded
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20.0))
                  )
              ),
            ),

            SizedBox(height: 20),
            TextField(
            controller:  telefonoController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Contacto',
                  labelText: 'Numero de Contacto',
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
            controller: horarioController,
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Horario',
                  labelText: 'Horario',
                  suffixIcon: Icon(
                      Icons.calendar_today_rounded
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
                  hintText: 'Imagen',
                  labelText: 'Url de Imagen',
                  suffixIcon: Icon(
                      Icons.camera_alt_outlined
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
                  _futureclub = createclub(nombreController.text, direccionController.text, telefonoController.text, horarioController.text, imagenController.text);
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
        content: new Text("Se ha registrado un nuevo Club, es necesario volver abrir la aplicacion"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Vale"),
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


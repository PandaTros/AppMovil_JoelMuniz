import 'package:clubapi/main.dart';
import 'package:clubapi/models/models.dart';
import 'package:clubapi/pages/DeliveryScreen.dart';
import 'package:clubapi/providers/clubs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:clubapi/models/clubs.dart';

class ClubsId extends StatelessWidget {
  final Club club;
   ClubsId(this.club,{Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Club Id'),

          actions: <Widget>[

            IconButton(
              icon: Icon(Icons.location_on),

              onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DeliveryScreen(),
              ));},
            ), //fin icono comentario

            //fin icono configuracion
          ],



        ),
        body: Card(

          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.lightBlueAccent[100],
          child: SizedBox(
            width: 200,
            height: 650,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent[500],
                    radius: 80,
                    child: CircleAvatar(


                      backgroundImage: NetworkImage(club.imagen,
                          ), //NetworkImage
                      radius: 100,
                    ),
                    //CircleAvatar
                  ), //CircleAvatar
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent[200],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ),
                  //SizedBox
                  Text(
                    'El horario del club es ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Numero de contacto ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ), //Textstyle
                  ),//SizedBox
                  Container(
                    width: 300,
                    height: 300,
                    padding: new EdgeInsets.all(10.0),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(

                        target: LatLng(20.98519846849798, -89.59600454809848),
                        zoom: 15,
                      ),
                    ),
                  ),//SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
    );



  }
}


class DeliveryScreen extends StatefulWidget {
   DeliveryScreen({Key? key}) : super(key: key);
  final LatLng fromPoint = LatLng(-38.956176, -67.920666);

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}


class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(1),
        child: Container(
          width: 450,
          height: 700,
          padding: new EdgeInsets.all(10.0),
          child: GoogleMap(
            initialCameraPosition: CameraPosition(

              target: widget.fromPoint,
              zoom: 4,
            ),
          ),

        ),
      ),
    );
  }
}

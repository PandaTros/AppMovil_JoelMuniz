import 'package:clubapi/main.dart';
import 'package:clubapi/pages/DeliveryScreen.dart';
import 'package:clubapi/providers/clubs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:clubapi/providers/torneo_provider.dart';

class TorneosId extends StatelessWidget {
  TorneosId({Key? key}) : super(key: key);






  @override
  Widget build(BuildContext context) {
    final torneosProvider = Provider.of<TorneosProvider>(context);
    final torneos = torneosProvider.displayTorneos;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Torneo Id'),

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
        body: ListView.separated(
            padding: new EdgeInsets.all(20.0),
            itemBuilder: (context, index) => Card(

              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.lightBlueAccent[100],
              child: SizedBox(
                width: 200,
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent[500],
                        radius: 80,
                        child: CircleAvatar(

                          backgroundImage: NetworkImage(
                              torneos[index].imagen), //NetworkImage
                          radius: 100,
                        ),
                        //CircleAvatar
                      ), //CircleAvatar
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        torneos[index].nombre,
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
                        torneos[index].descripccion,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        torneos[index].bases,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ), //Textstyle
                      ),//SizedBox
                      //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: torneos.length)
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

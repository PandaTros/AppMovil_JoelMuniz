import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




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
          target: LatLng(0, 0),
          zoom: 4,
        ),
      ),

    ),
    ),
    );
  }
}







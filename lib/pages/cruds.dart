import 'package:clubapi/models/clubs.dart';
import 'package:clubapi/pages/Clubs.dart';
import 'package:clubapi/pages/Register_Clubs.dart';
import 'package:clubapi/pages/Register_Torneos.dart';
import 'package:flutter/material.dart';

class Registerts extends StatelessWidget {



  const Registerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar '),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Register_club(),

            SizedBox(height: 50),
            Register_Torneo(),


          ],
        ),
      ),
    );
  }
}


class Register_club extends StatelessWidget {

  Register_club ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 350,
          height: 220,
          padding: new EdgeInsets.all(10.0),
          child:
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.blueAccent[100],
            child: SizedBox(
              width: 200,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                     //CircleAvatar
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Registra un Club',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Registrar Nuevo club Depotivo',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    SizedBox(

                      width: 120,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(color: Colors.blue),
                          backgroundColor: Colors.white,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegisterClubs()))},
                        icon: Icon(Icons.home_max_sharp,),
                        label: Text('Registrar',),
                      ), //RaisedButton
                    ) //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ), //Card
        )
    );
  }
}
class Register_Torneo extends StatelessWidget {
  Register_Torneo ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 350,
          height: 220,
          padding: new EdgeInsets.all(10.0),
          child:
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.blueAccent[100],
            child: SizedBox(
              width: 200,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //CircleAvatar
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Registra un Torneo',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Registrar Nuevo Torneo Depotivo',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    SizedBox(

                      width: 120,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(color: Colors.blue),
                          backgroundColor: Colors.white,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegisterTorneos()))},
                        icon: Icon(Icons.sports_baseball,),
                        label: Text('Registrar',),
                      ), //RaisedButton
                    ) //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ), //Card
        )
    );
  }
}

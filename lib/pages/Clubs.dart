import 'package:clubapi/main.dart';
import 'package:clubapi/pages/ClubId.dart';
import 'package:clubapi/pages/DeliveryScreen.dart';
import 'package:clubapi/providers/clubs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:clubapi/models/clubs.dart';

class Clubs extends StatelessWidget {

  const Clubs({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final clubsProvider = Provider.of<ClubsProvider>(context);
    final clubs = clubsProvider.displayClubs;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Clubes'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),





        ),
        body:Center(
          child:ListView.separated(
              padding: new EdgeInsets.all(20.0),
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.lightBlueAccent[100],
                child:
                SizedBox(
                  width: 200,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.lightBlueAccent[100],
                          radius: 80,
                          child: CircleAvatar(

                            backgroundImage: NetworkImage(
                                clubs[index].imagen), //NetworkImage
                            radius: 100,
                          ),
                          //CircleAvatar
                        ), //CircleAvatar
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          clubs[index].nombre,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent[200],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          'Horario del Club: '+clubs[index].horario,
                          style: TextStyle(

                            fontSize: 15,
                            color: Colors.grey[700],
                          ), //Textstyle
                        ), //Text
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ubicacion: '+clubs[index].direccion,
                          textAlign: TextAlign.center,
                          style: TextStyle(

                            fontSize: 15,
                            color: Colors.grey[700],
                          ), //Textstyle
                        ), //Text
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Contacto '+clubs[index].telefono,
                          textAlign: TextAlign.center,
                          style: TextStyle(

                            fontSize: 15,
                            color: Colors.grey[700],
                          ), //Textstyle
                        ), //Text
                        SizedBox(
                          height: 10,
                        ),//SizedBox
                        //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
              separatorBuilder: (_, __) => Divider(),
              itemCount: clubs.length) ,
        ),
      );



  }
}






















class Cards extends StatelessWidget {
  Cards ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clubsProvider = Provider.of<ClubsProvider>(context);
    final clubs = clubsProvider.displayClubs;
    return Center(
        child: Container(
          width: 350,
          height: 360,
          padding: new EdgeInsets.all(10.0),
          child:
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.lightBlueAccent[100],
            child: SizedBox(
              width: 200,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.blueAccent[500],
                      radius: 80,
                      child: CircleAvatar(

                        backgroundImage: NetworkImage(
                            "https://www.fundeu.es/wp-content/uploads/2016/08/ciclismo-claves.jpg"), //NetworkImage
                        radius: 100,
                      ),
                      //CircleAvatar
                    ), //CircleAvatar
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'sdd',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueAccent[200],
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Descripccion del club',
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
                      child: RaisedButton(
                        onPressed: () => null,
                        color: Colors.blueAccent[400],
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: [
                              Icon(Icons.touch_app),
                              Text('Ver mas',
                                style: TextStyle(

                                  color: Colors.white,
                                ),),
                            ],
                          ), //Row
                        ), //Padding
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







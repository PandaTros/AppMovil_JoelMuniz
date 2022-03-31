import 'package:clubapi/pages/DeliveryScreen.dart';
import 'package:clubapi/pages/TorneosId.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clubapi/providers/torneo_provider.dart';
import 'package:http/http.dart' as http;

Future<void> _refresh(){
  return Future.delayed(Duration(seconds: 0),);
}
class Torneos extends StatelessWidget {
  const Torneos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final torneoProvider = Provider.of<TorneosProvider>(context);
    final torneos = torneoProvider.displayTorneos;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Torneos'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),





      ),

      body: ListView.separated(
          padding: new EdgeInsets.all(20.0),
          itemBuilder: (context, index) => Card(

            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.lightBlueAccent[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
            child: SizedBox(
              width: 200,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent[100],
                      radius: 70,
                      child: CircleAvatar(

                        backgroundImage: NetworkImage(
                            torneos[index].imagen), //NetworkImage
                        radius: 70,
                      ),
                      //CircleAvatar
                    ),

                    //CircleAvatar
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
                    ), //SizedBox
                    Text(
                      torneos[index].descripccion,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ), //Textstyle
                    ),
                    //Text
                    SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info_outline_rounded),
                    ),
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'El torneo cuenta con '+torneos[index].numEquipos+' Equipos de '+torneos[index].integrantes+' Integrantes en total',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ), //Textstyle
                    ),
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      '(Importante)'+torneos[index].bases,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ), //Textstyle
                    ),
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Tiene un costo de '+torneos[index].costo,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ), //Textstyle
                    ),
                    //SizedBox
                    //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
          separatorBuilder: (_, __) => Divider(),
          itemCount:torneos.length),


    );

  }
}






























class Cards extends StatelessWidget {
  Cards ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            "https://as01.epimg.net/masdeporte/imagenes/2021/08/18/reportajes/1629287252_471087_1632935001_noticiareportajes_grande.jpg"), //NetworkImage
                        radius: 100,
                      ),
                      //CircleAvatar
                    ), //CircleAvatar
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Torneo de Futbol',
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
                      'Descripccion del Torneo',
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

class Cards2 extends StatelessWidget {
  Cards2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            "https://frasesdelavida.com/wp-content/uploads/2018/03/frases-de-baloncesto.jpg"), //NetworkImage
                        radius: 100,
                      ),
                      //CircleAvatar
                    ), //CircleAvatar
                    SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'Basquetball',
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
                      'Descripccion del Torneo',
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



import 'package:clubapi/models/clubs.dart';
import 'package:clubapi/pages/Clubs.dart';
import 'package:clubapi/pages/Index.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2500),
        ()=> Navigator.push(context, MaterialPageRoute(builder: (context) =>Home(),),),);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Center (
              child: FractionallySizedBox(
                widthFactor: .6,
                child: Image.network(
                    'https://www.pngkit.com/png/full/297-2976424_deportes-png-deporte.png'),

              ),

            ),
            SizedBox(height: 20),
            Text(
              'Finding & Tournament',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueAccent),
            ),

            Spacer(),




          ],
        ) ,
      ),

    );
  }
}

import 'dart:io';

import 'package:clubapi/models/clubs.dart';
import 'package:clubapi/pages/Clubs.dart';
import 'package:clubapi/pages/DeliveryScreen.dart';
import 'package:clubapi/pages/Index.dart';

import 'package:clubapi/pages/splash.dart';
import 'package:clubapi/providers/clubs_provider.dart';
import 'package:clubapi/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context) => super.createHttpClient(context)..badCertificateCallback = (cert, host, port) => true;
}


class AppState extends StatelessWidget {


  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = MyHttpOverrides();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ClubsProvider(),lazy: false, ),
        ChangeNotifierProvider(create: (context) => TorneosProvider(),lazy: false, )
      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue),
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}

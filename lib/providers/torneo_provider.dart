import 'package:flutter/cupertino.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;
import 'package:clubapi/models/torneo.dart';
import 'dart:convert';

class TorneosProvider extends ChangeNotifier{
  final String _host = 'apiclub.somee.com';
  List<Torneo> displayTorneos = [];


  TorneosProvider(){
    getTorneo();
  }

  getTorneo() async{
    const endpoint = '/api/Torneo';
    final url = Uri.http(_host, endpoint);
    final client =  RetryClient(http.Client());

    try {
      final response = await client.read(url);
      displayTorneos= List<Torneo>.from(json.decode(response).map((x) => Torneo.fromJson(x)));


      notifyListeners();
      print(response);
    } finally{
      client.close();
    }


  }

}
import 'package:flutter/cupertino.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;
import 'package:clubapi/models/clubs.dart';
import 'dart:convert';

class ClubsProvider extends ChangeNotifier{
  final String _host = 'apiclub.somee.com';
  List<Club> displayClubs = [];


  ClubsProvider(){
    getClubs();
  }

  getClubs() async{
    const endpoint = '/api/Club';
    final url = Uri.http(_host, endpoint);
    final client =  RetryClient(http.Client());
    
    try {
      final response = await client.read(url);
      displayClubs= List<Club>.from(json.decode(response).map((x) => Club.fromJson(x)));


      notifyListeners();
      print(response);
    } finally{
      client.close();
    }
    

  }

}
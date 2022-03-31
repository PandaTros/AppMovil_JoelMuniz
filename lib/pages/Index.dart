import 'package:clubapi/models/clubs.dart';
import 'package:clubapi/pages/cruds.dart';
import 'package:flutter/material.dart';
import 'package:clubapi/pages/Clubs.dart';
import 'package:clubapi/pages/Torneos.dart';

import 'Torneos.dart';
import 'Clubs.dart';
import 'DeliveryScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  // to keep track of active tab index
  final List<Widget> screens = [
    Torneos(),
    Clubs(),
    DeliveryScreen(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Torneos(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Registerts()
        ));},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Torneos(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.sports,
                          color: currentTab == 0 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          'Torneos',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.sports,
                          color: currentTab == 2 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              // Right Tab bar icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Clubs(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 3 ? Colors.blueAccent : Colors.grey,
                        ),
                        Text(
                          'Clubes',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )



            ],
          ),


        ),
      ),
    );
  }
}
import 'package:bottom_navigator/settings.dart';
import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              headline1: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold))),
      home: BaseClass(title: 'Bottombar'),
    );
  }
}

class BaseClass extends StatefulWidget {
  BaseClass({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BaseClassState createState() => _BaseClassState();
}

class _BaseClassState extends State<BaseClass> {
  int selectedindex = 0;
  String title = 'Home';
  final List<Widget> _chidlWidgets = [
    HomePage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: _chidlWidgets[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabbed,
        currentIndex: selectedindex,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            activeIcon: new Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            activeIcon: new Icon(
              Icons.mail,
              color: Colors.blue,
            ),
            title: new Text('Setting'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: new Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: Text('Profile'))
        ],
      ),
    );
  }

  void onTabbed(int value) {
    switch (value) {
      case 0:
        title = 'Home';
        break;
      case 1:
        title = 'Setting';
        break;
      case 2:
        title = 'Profile';
        break;
    }
    setState(() {
      selectedindex = value;
    });
  }
}

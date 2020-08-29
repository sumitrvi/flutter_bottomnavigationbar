import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.pinkAccent,
      child: Center(
          child: Text(
        'Settings',
        style: Theme.of(context).textTheme.headline1,
      )),
    ));
  }
}

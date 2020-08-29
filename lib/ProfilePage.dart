import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Center(
          child: Text(
        'Profile',
        style: Theme.of(context).textTheme.headline1,
      )),
    );
  }
}

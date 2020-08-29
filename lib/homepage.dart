import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
          child: Text(
        'Home',
        style: Theme.of(context).textTheme.headline1,
      )),
    );
  }
}

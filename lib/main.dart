import 'package:flutter/material.dart';
import 'Model/Launch/Launch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'MyTransfer',
        theme: ThemeData(
          primaryColor: Colors.blue[600],
          primarySwatch: Colors.blue
        ),
        home: LaunchScreenAnimation(),
      ),
    );
  }
}

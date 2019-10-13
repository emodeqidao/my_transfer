import 'package:flutter/material.dart';
import '../Pages/DrawerPage.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Transfer'),
        ),
        drawer: DrawerPage(),
      ),
    );
  }
}

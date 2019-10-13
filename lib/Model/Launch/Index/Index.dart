import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Transfer'),
        ),
        body: Center(
          child: Text('index 文本'),
        ),
      ),
    );
  }
}

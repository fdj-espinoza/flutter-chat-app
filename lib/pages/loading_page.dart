import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Loading')),
      body: Center(child: Text('Loading... Please wait!')),
    );
  }
}

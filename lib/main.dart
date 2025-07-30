import 'package:chat/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      initialRoute: 'login',
      routes: appRoutes,
    ),
  );
}

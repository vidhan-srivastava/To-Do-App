import 'package:flutter/material.dart';
import 'package:note_taking_app/newpage.dart';
import 'loading.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/newpage',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/newpage':(context) =>  NewPage(),
    },
  ));
}

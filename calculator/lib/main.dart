import 'package:calculator/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    /*cBlocProvider(
    create: (context) => SubjectBloc(),
    child: */
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
      home: Home(),
    ), /*)*/
  );
}

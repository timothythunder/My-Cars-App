import 'package:flutter/material.dart';
import 'Cars.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Cars Roland Wants'),
        ),
        body: Cars(),
      ),
    ),
  );
}

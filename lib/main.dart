import 'package:app_menu/detail_menu.dart';
import 'package:flutter/material.dart';
import 'package:app_menu/main_menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu App',
      theme: ThemeData(),
      home: DetailMenu(),
    );
  }
}

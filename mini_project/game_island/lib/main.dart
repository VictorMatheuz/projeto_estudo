import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:game_island/game.dart';

final double tileSize = 32;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mini Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Game());
  }
}

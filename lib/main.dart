import 'package:flutter/material.dart';
import 'view/home.dart';
import 'view/maps.dart';
import 'view/polyline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/maps': (context) =>const MapFlutter(),
        '/polyline': (context) =>const PolylineMaps(),
      }
    );
  }
}

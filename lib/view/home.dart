import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: const Text("Flutter Maps Example"),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(onPressed:(){Navigator.pushNamed(context, '/maps');}, child: const Text("Maps")),
          ElevatedButton(onPressed:(){Navigator.pushNamed(context, '/polyline');}, child:const Text("Polyline")),
          // ElevatedButton(onPressed: null, child: Text("Marker")),
        ],
      )),
      ),
    );
  }
}
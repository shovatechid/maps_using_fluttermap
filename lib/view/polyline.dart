import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

class PolylineMaps extends StatelessWidget {
  const PolylineMaps({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Map Polyline"),
        ),
        body: FlutterMap(
          options: MapOptions(
            center: latLng.LatLng(-6.8862572,107.5236119), //Kota Cimahi
            zoom: 9,
          ),
          nonRotatedChildren: [
            AttributionWidget.defaultWidget(
              source: 'Shova Tech Engineering',
              onSourceTapped: null,
            ),
          ],
          children: [
            //buat maps //create maps
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            //tambah marker //add marker
           PolylineLayer(
            polylineCulling: false,
            polylines: [
                Polyline(
                  points: [latLng.LatLng(-6.9051823,107.1740212), latLng.LatLng(-6.8862572,107.5236119), latLng.LatLng(-6.9034495,107.6431575),],
                  color: Colors.red,
                ),
            ],
        ),
          ],
        ),
      ),
    );
  }
}
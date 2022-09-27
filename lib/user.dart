import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      home: GoogleMapSample(),
    );
  }
}

class GoogleMapSample extends StatefulWidget {
  @override
  State<GoogleMapSample> createState() => GoogleMapSampleState();
}

class GoogleMapSampleState extends State<GoogleMapSample> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition _mapInitialPosition = CameraPosition(
    target: LatLng(-6.1753924, 106.8271528),
    zoom: 15.0,
  );

  CameraPosition _anotherPosition = CameraPosition(
    target: LatLng(-6.3753924, 106.9271528),
    zoom: 15.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _mapInitialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      
    );
  }

  Future<void> _moveCamera() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_anotherPosition));
  }
}
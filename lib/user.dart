import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(-1.1495672, 116.8613886);

class GoogleMapSample extends StatefulWidget {
  const GoogleMapSample({super.key});

  @override
  State<GoogleMapSample> createState() => GoogleMapSampleState();
}

class GoogleMapSampleState extends State<GoogleMapSample> {
  late GoogleMapController _mapController;
  Map<String, Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: currentLocation, zoom: 15.0),
        onMapCreated: (controller) {
          _mapController = controller;
          addMarker('test', currentLocation);
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(markerId: MarkerId(id),
    position: location);
    _markers[id] = marker;
    setState(() {
      
    });
  }
}

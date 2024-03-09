import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final LatLng _startLocation =
      const LatLng(37.7749, -122.4194); // San Francisco
  final LatLng _endLocation = const LatLng(34.0522, -118.2437); // Los Angeles
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Animation'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _startLocation,
          zoom: 5,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          Marker(
            markerId: const MarkerId('start'),
            position: _startLocation,
            infoWindow: const InfoWindow(title: 'Start'),
          ),
          Marker(
            markerId: const MarkerId('end'),
            position: _endLocation,
            infoWindow: const InfoWindow(title: 'End'),
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _animateFlight,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  Future<void> _animateFlight() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
          southwest: _startLocation,
          northeast: _endLocation,
        ),
        100.0, // Padding
      ),
    );
  }
}

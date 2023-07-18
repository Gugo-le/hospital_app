import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital/helpers/appcolors.dart';
import 'package:hospital/pages/locpages/Hos1page.dart';

const LatLng SOURCE_LOCATION = LatLng(37.19268620622627, 127.0778045633301);
const LatLng DEST_LOCATION = LatLng(37.192746, 127.072852);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;

class Hos5Page extends StatefulWidget {
  const Hos5Page({super.key});

  @override
  State<Hos5Page> createState() => _Hos1PageState();
}

class _Hos1PageState extends State<Hos5Page> {
  final Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  final Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;

  late LatLng currentLocation;
  late LatLng destinationLocation;

  Set<Polyline> _polyline = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  @override
  void initState() {
    super.initState();

    polylinePoints = PolylinePoints();
    // set up initial locations
    setInitialLocation();
    // set up the marker icons
    setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/img/source_pin.png',
    );

    destinationIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/img/destination_pin.png',
    );
  }

  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
    destinationLocation =
        LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = const CameraPosition(
        zoom: CAMERA_ZOOM,
        tilt: CAMERA_TILT,
        bearing: CAMERA_BEARING,
        target: SOURCE_LOCATION);

    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            myLocationEnabled: true,
            compassEnabled: false,
            tiltGesturesEnabled: false,
            polylines: _polyline,
            markers: _markers,
            mapType: MapType.normal,
            initialCameraPosition: initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);

              showPinsOnMap();
              setPolylines();
            },
          ),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(12),
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset.zero),
                ]),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                          image: AssetImage('assets/img/drug.png'),
                          fit: BoxFit.cover),
                      border:
                          Border.all(color: AppColors.MAIN_COLOR, width: 1)),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: Column(
                  children: const [
                    Text(
                      '상쾌한이비인후과',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text(
                      'My Location',
                      style: TextStyle(color: AppColors.MAIN_COLOR),
                    )
                  ],
                )),
                const Icon(
                  Icons.location_pin,
                  color: AppColors.MAIN_COLOR,
                  size: 40,
                )
              ],
            ),
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          left: 0,
          right: 0,
          bottom: pinPillPosition,
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset.zero,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/img/drug.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '상쾌한이비인후과',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 7),
                            const Text('Tel. 031-8003-8275'),
                            const Text(
                              '경기도 화성시 동탄솔빛로 44',
                              style: TextStyle(color: AppColors.MEATS),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.location_pin,
                        color: AppColors.MEATS,
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  void showPinsOnMap() {
    setState(
      () {
        _markers.add(Marker(
            markerId: const MarkerId('sourcePin'),
            position: currentLocation,
            icon: sourceIcon));

        _markers.add(Marker(
            markerId: const MarkerId('destinationPin'),
            position: destinationLocation,
            icon: destinationIcon,
            onTap: () {
              setState(() {
                pinPillPosition = PIN_VISIBLE_POSITION;
              });
            }));
      },
    );
  }

  void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "APPKEY",
        PointLatLng(currentLocation.latitude, currentLocation.longitude),
        PointLatLng(
            destinationLocation.latitude, destinationLocation.longitude));
    if (result.status == 'OK') {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });

      setState(() {
        _polyline.add(Polyline(
            width: 10,
            polylineId: const PolylineId('polyLine'),
            color: const Color(0xFF08A5CB),
            points: polylineCoordinates));
      });
    }
  }
}

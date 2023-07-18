import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital/helpers/appcolors.dart';

import '../../models/mapuserbadge.dart';

const LatLng SOURCE_LOCATION = LatLng(37.19268620622627, 127.0778045633301);
const LatLng DEST_LOCATION = LatLng(37.194785999999574, 127.07414365083052);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 100;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class Hos1Page extends StatefulWidget {
  const Hos1Page({Key? key}) : super(key: key);

  @override
  State<Hos1Page> createState() => _Hos1PageState();
}

class _Hos1PageState extends State<Hos1Page> {
  final Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  final Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;
  bool userBadgeSelected = false;

  late LatLng currentLocation;
  late LatLng destinationLocation;

  Set<Polyline> _polylines = Set<Polyline>();
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
      target: SOURCE_LOCATION,
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              myLocationEnabled: true,
              compassEnabled: false,
              tiltGesturesEnabled: false,
              polylines: _polylines,
              markers: _markers,
              mapType: MapType.normal,
              initialCameraPosition: initialCameraPosition,
              onTap: (LatLng loc) {
                setState(() {
                  pinPillPosition = PIN_INVISIBLE_POSITION;
                  userBadgeSelected = false;
                });
              },
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
            child: MapUserBadge(isSelected: userBadgeSelected),
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
                                '삼성제일소아청소년과의원',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 7),
                              const Text('Tel. 031-8003-0001'),
                              const Text(
                                '경기 화성시 반송동 219-2',
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
      ),
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: const MarkerId('sourcePin'),
        position: currentLocation,
        icon: sourceIcon,
        onTap: () {
          setState(() {
            userBadgeSelected = true;
          });
        },
      ));

      _markers.add(Marker(
        markerId: const MarkerId('destinationPin'),
        position: destinationLocation,
        icon: destinationIcon,
        onTap: () {
          setState(() {
            pinPillPosition = PIN_VISIBLE_POSITION;
          });
        },
      ));
    });
  }

  void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "APPKEY",
      PointLatLng(currentLocation.latitude, currentLocation.longitude),
      PointLatLng(destinationLocation.latitude, destinationLocation.longitude),
    );

    if (result.status == 'OK') {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });

      Polyline polyline = Polyline(
        polylineId: const PolylineId('polyLine'),
        width: 10,
        color: const Color(0xFF08A5CB),
        points: polylineCoordinates,
      );

      print('Polyline Coordinates: $polylineCoordinates');

      setState(() {
        _polylines = Set<Polyline>();
        _polylines.add(polyline);
      });

      print('Polyline Added: $_polylines');
    } else {
      print(
          'Error occurred while fetching polylines. Status: ${result.status}');
    }
  }
}

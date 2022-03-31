import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:horus_university/ui_screens/home_screen.dart';
import 'package:transition/transition.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  late GoogleMapController _controller;
  bool _added = false;
  double _height = 70.0;
  DatabaseReference latt = FirebaseDatabase.instance.ref("location/");

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: latt.onValue,
      builder: (context, AsyncSnapshot snapshot) {
        if (_added) {
          mymap(snapshot);
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Scaffold(
          body: GoogleMap(
            mapType: MapType.terrain,
            markers: {
              Marker(
                  position: LatLng(
                    snapshot.data!.snapshot.value['lat'],
                    snapshot.data!.snapshot.value['lon'],
                  ),
                  markerId: const MarkerId('id'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueMagenta)),
            },
            initialCameraPosition: CameraPosition(
                target: LatLng(
                  snapshot.data!.snapshot.value['lat'],
                  snapshot.data!.snapshot.value['lon'],
                ),
                zoom: 14.47),
            onMapCreated: (GoogleMapController controller) async {
              setState(() {
                _controller = controller;
                _added = true;
              });
            },
          ),
          bottomNavigationBar: BottomAppBar(
            child: Padding(
                padding: const EdgeInsets.only(right: 0, left: 0),
                child: _height >= MediaQuery.of(context).size.width * 0.5
                    ? AnimatedContainer(
                        curve: Curves.ease,
                        duration: const Duration(seconds: 1),
                        height: _height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          color: const Color.fromRGBO(41, 37, 88, 1),
                          border: Border.all(
                            color: const Color.fromRGBO(41, 37, 88, 100),
                          ),
                        ),
                        child: ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.01,
                                    left: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  child: Text(
                                    "Bus Number:",
                                    style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.05),
                                  child: Text(
                                    "8",
                                    style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.05),
                                  child: Text(
                                    "Bus Driver:",
                                    style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.05,
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: Text(
                                    "Nagah",
                                    style: GoogleFonts.notoSerif(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.05,
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: IconButton(
                                    icon: Icon(
                                      _height ==
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5
                                          ? Icons.arrow_downward_rounded
                                          : Icons.arrow_upward_rounded,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      _height ==
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5
                                          ? setState(() {
                                              _height = 70;
                                            })
                                          : setState(() {
                                              _height = MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5;
                                            });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.05),
                              child: Center(
                                child: Text(
                                  " Arrival Time ",
                                  style: GoogleFonts.notoSerif(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(182, 139, 26, 100),
                                    child: Text(
                                      "Dashboard",
                                      style: GoogleFonts.notoSerif(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Transition(
                                          child: const Home(),
                                          transitionEffect:
                                              TransitionEffect.LEFT_TO_RIGHT,
                                        ),
                                      );
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                      ),
                                      child: Text(
                                        "7:40 AM",
                                        style: GoogleFonts.notoSerif(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.12,
                                  ),
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(182, 139, 26, 100),
                                    child: Text(
                                      "Set Mark",
                                      style: GoogleFonts.notoSerif(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Transition(
                                          child: const MyMap(),
                                          transitionEffect:
                                              TransitionEffect.BOTTOM_TO_TOP,
                                        ),
                                      );
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: _height,
                        curve: Curves.ease,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          color: const Color.fromRGBO(41, 37, 88, 1),
                          border: Border.all(
                            color: const Color.fromRGBO(41, 37, 88, 100),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.015),
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(182, 139, 26, 100),
                                    child: Text(
                                      "Dashboard",
                                      style: GoogleFonts.notoSerif(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Transition(
                                          child: const Home(),
                                          transitionEffect:
                                              TransitionEffect.LEFT_TO_RIGHT,
                                        ),
                                      );
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 5,
                                        left: 5,
                                      ),
                                      child: Text(
                                        "Bus 8 arrival time :",
                                        style: GoogleFonts.notoSerif(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.01,
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      child: Text(
                                        "7:40 AM",
                                        style: GoogleFonts.notoSerif(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.01),
                                  child: IconButton(
                                    icon: Icon(
                                      _height ==
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5
                                          ? Icons.arrow_downward_rounded
                                          : Icons.arrow_upward_rounded,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      _height ==
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5
                                          ? setState(() {
                                              _height = 70;
                                            })
                                          : setState(() {
                                              _height = MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5;
                                            });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
          ),
        );
      },
    );
  }

  Future<void> mymap(AsyncSnapshot snapshot) async {
    await _controller
        .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
            target: LatLng(
              snapshot.data!.snapshot.value['lat'],
              snapshot.data!.snapshot.value['lon'],
            ),
            zoom: 14.47)));
  }
}

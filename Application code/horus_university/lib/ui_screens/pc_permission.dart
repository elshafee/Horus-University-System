import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PCPermission extends StatefulWidget {
  const PCPermission({Key? key}) : super(key: key);

  @override
  State<PCPermission> createState() => _PCPermissionState();
}

class _PCPermissionState extends State<PCPermission> {
  double _height = 70;
  bool _image = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PC Permission"),
      ),
      body: ListView(
        children: [
          const Center(
            child: Text("ttt"),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(right: 0, left: 0),
          child: _height >= 220
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
                    color: Colors.indigo[800],
                    border: Border.all(
                      color: Colors.indigo,
                    ),
                  ),
                  child: ListView(
                    children: [
                      // DateRangePickerDialog(
                      //     firstDate: DateTime(2022, 1, 15),
                      //     lastDate: DateTime(2024, 1, 12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            color: const Color.fromRGBO(182, 139, 26, 1),
                            icon: Icon(
                              _height == 220
                                  ? Icons.cancel
                                  : Icons.arrow_upward_rounded,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              _height == 220
                                  ? setState(() {
                                      _height = 70;
                                    })
                                  : setState(() {
                                      _height = 220;
                                    });
                            },
                          ),
                          Text(
                            "Please Choose the image source",
                            style: GoogleFonts.jomolhari(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          RaisedButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Gallery',
                                    style: GoogleFonts.jomolhari(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.add_photo_alternate,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              color: const Color.fromRGBO(108, 99, 255, 0.9),
                              splashColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              onPressed: () {}),
                          RaisedButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'f',
                                    style: GoogleFonts.jomolhari(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.add_a_photo,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              color: const Color.fromRGBO(108, 99, 255, 0.9),
                              splashColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                )
              : AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: _image == null ? _height : _height = 70.0,
                  curve: Curves.ease,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Colors.indigo[800],
                    border: Border.all(
                      color: Colors.indigo,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            child: _image == false
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Request new permission',
                                        style: GoogleFonts.courgette(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        Icons.add_a_photo,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                : Text(
                                    'Next',
                                    style: GoogleFonts.courgette(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                            color: const Color.fromRGBO(108, 99, 255, 0.9),
                            splashColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            onPressed: () {
                              if (_image == false) {
                                setState(() {
                                  _height = 220;
                                });
                              } else {
                                setState(() {
                                  _height = 70;
                                });
                              }

                              //getImage
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

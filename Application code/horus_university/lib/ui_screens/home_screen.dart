import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horus_university/ui_screens/bus_location.dart';
import 'package:horus_university/utilities/drawer_files.dart';
import 'package:transition/transition.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final subjects = [
    {
      'name': 'Mathematics',
      'type': 'Lecture',
      'place': 'E320',
      'doctor': 'Dr Mohamed Kamal',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dashboard"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
        ),
        toolbarHeight: 70,
      ),
      drawer: const Drawe(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                bottom: MediaQuery.of(context).size.height * 0.015,
                right: MediaQuery.of(context).size.width * 0.03,
                left: MediaQuery.of(context).size.width * 0.03),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              alignment: Alignment.center,
              width: 450,
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        "Your Transport line :",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      Text(
                        "Talkha",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Bus Number:",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * (0.3 / 2),
                      ),
                      Text(
                        "20",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * (0.3 / 1.4),
                      ),
                      Text(
                        "Mini-Bus",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Arrival Time:",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * (0.3 / 2),
                      ),
                      Text(
                        "7:45",
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * (0.25 / 2),
                      ),
                      SizedBox(
                        width: 100.0,
                        height: 20.0,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: const Color.fromRGBO(182, 139, 26, 100),
                          child: Text(
                            "Bus Location",
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 12,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: const BusLocation(),
                                    transitionEffect: TransitionEffect.FADE));
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                //color: Colors.yellow[100],
                border: Border.all(
                  color: const Color.fromRGBO(41, 37, 88, 100),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                bottom: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.width * 0.03,
                left: MediaQuery.of(context).size.width * 0.03),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.yellow[200],
              ),
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(0.5),
                    child: ListTile(
                      title: Text("Lecture Mathematics"),
                      leading: Text("9 : 30 am"),
                      trailing: Text("E326"),
                      subtitle: Text("Dr. Waleed Raslan"),
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.5),
                    child: ListTile(
                      title: Text("Lecture Material Science"),
                      leading: Text("12 : 30 am"),
                      trailing: Text("E428"),
                      subtitle: Text("Dr. Maher Rashad"),
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.5),
                    child: ListTile(
                      title: Text("Lecture Machine Design"),
                      leading: Text("2 : 00 am"),
                      trailing: Text("E205"),
                      subtitle: Text("Dr. Waleed Samy"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

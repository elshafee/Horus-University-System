import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:horus_university/ui_screens/attendance_ui.dart';
import 'package:horus_university/ui_screens/bus_location.dart';
import 'package:horus_university/ui_screens/cafee.dart';
import 'package:horus_university/ui_screens/financial.dart';
import 'package:horus_university/ui_screens/grades_ui.dart';
import 'package:horus_university/ui_screens/library_screen.dart';
import 'package:horus_university/ui_screens/pc_permission.dart';
import 'package:horus_university/ui_screens/questionnaire_ui.dart';
import 'package:horus_university/ui_screens/report_problem.dart';
import 'package:horus_university/ui_screens/splash_screen.dart';
import 'package:horus_university/ui_screens/time_table.dart';
import 'package:transition/transition.dart';

class Drawe extends StatefulWidget {
  const Drawe({Key? key}) : super(key: key);

  @override
  _DraweState createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              child: Icon(Icons.person),
              //backgroundImage: AssetImage('assets/images/signin.png'),
            ),
            accountName: Text("${user!.displayName}"),
            accountEmail: Text("${user!.email}"),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  trailing: const Icon(Icons.dashboard),
                  title: const Text("Dashboard"),
                  onTap: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.calendar_view_day),
                  title: const Text("Schedule"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Timetable(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.view_list),
                  title: const Text("Grades"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Grades(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.question_answer_outlined),
                  title: const Text("Questionnaire"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Questionnaire(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.person_add),
                  title: const Text("Attendance"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Attendance(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.directions_bus_rounded),
                  title: const Text("Bus"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const BusLocation(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.local_cafe),
                  title: const Text("Cafes"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Questionnaire(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.accessibility),
                  title: const Text("Activities"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Cafe(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.payment),
                  title: const Text("Financial"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Financial(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.library_books),
                  title: const Text("Library"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const Library(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.computer),
                  title: const Text("Need a PC"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const PCPermission(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.report),
                  title: const Text("Report Problem"),
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const ReportProblem(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
                ListTile(
                  trailing: const Icon(Icons.logout),
                  title: const Text("logout"),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(
                        context,
                        Transition(
                            child: const Splash(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

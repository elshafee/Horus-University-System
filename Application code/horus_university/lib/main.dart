import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:horus_university/services/authentication.dart';
import 'package:horus_university/ui_screens/home_screen.dart';
import 'package:horus_university/ui_screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horus University app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      routes: {
        '/splash': (context) => const Splash(),
        '/home': (context) => const Home(),
        '/signin': (context) => const Signin(),
      },
    );
  }
}

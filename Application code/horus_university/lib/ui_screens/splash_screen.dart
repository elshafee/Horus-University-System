import 'package:flutter/material.dart';
import 'package:horus_university/services/authentication_wrapper.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 5000,
      navigateRoute: AuthWrapper(),
      imageSize: (MediaQuery.of(context).size.width * 0.25).toInt(),
      imageSrc: "assets/images/slogo.png",
      backgroundColor: Colors.white,
    );
  }
}

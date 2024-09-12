import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:web/Machines/Desktop/desktop.dart';
import 'package:web/Machines/Mobile/MobileScreen.dart';
import 'package:web/Machines/Responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Responsive(mobileScreen: MobileScreen(), desktop: Desktop())),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late final AnimationController controller;

    return Scaffold(
        body: Center(
      child: Lottie.asset(
        "assets/solar.json",
      ),
    ));
  }
}

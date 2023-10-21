import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_tiktok/Widgets/constant.dart';
import 'HomeScreen.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    TimerForSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: kGradientColorLinear,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1634942536990-44b9aba4c712?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGlrdG9rJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //
  void navigationToHomeScreen() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);
  }

  // ignore: non_constant_identifier_names
  void TimerForSplashScreen() {
    Timer(const Duration(seconds: 3), navigationToHomeScreen);
  }
}

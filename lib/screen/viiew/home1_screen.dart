import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introscreen/utils/data.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    check();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            "Splash !",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> check() async {
    Moj moj = Moj();
    Map m1 = await moj.readMoj();
    if (m1['check'] == true) {
      Timer(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, 'home_screen');
        },
      );
    } else {
      Timer(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, 'intro_screen');
        },
      );
    }
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introscreen/screen/home/home2_screen.dart';
import 'package:introscreen/screen/man_screen/provider/home_pprovider.dart';
import 'package:introscreen/screen/man_screen/view/screen.dart';
import 'package:introscreen/screen/viiew/home1_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IntroProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          'intro_screen': (context) => IntroScreen(),
          'home_screen': (context) => HomeScreen(),
        },
      ),
    ),
  );
}
import 'package:car_rental/Dashboard/dashboard.dart';
import 'package:car_rental/Home/bookingdetails.dart';
import 'package:car_rental/Home/cripto.dart';
import 'package:car_rental/Signup/moredetails.dart';
import 'package:car_rental/Signup/signup.dart';
import 'package:car_rental/googlemap/map.dart';
import 'package:car_rental/login/otpscreen.dart';
import 'package:car_rental/login/splashscreen.dart';
import 'package:car_rental/support/supporteam.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rental',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yvo/screens/registration_screen.dart';

import 'package:yvo/screens/addVehicle.dart';
import 'package:yvo/screens/homeScreen.dart';
import 'package:yvo/Components/serviceCenterCard.dart';
import 'package:yvo/screens/serviceCenter.dart';
import 'package:yvo/screens/profile.dart';
import 'package:yvo/screens/orders.dart';
import 'package:yvo/screens/helpScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Authentication',
      home: RegistrationScreen(title: 'YVO Service'),
      routes: <String, WidgetBuilder>{
        '/help': (context) => HelpScreen(),
        '/orders': (context) => Orders(),
        '/profile': (context) => Profile(),
        '/serviceCenter': (context) => ServiceCenter(),
        '/homeScreen': (context) => HomeScreen(),
        '/addVehicle': (context) => AddVehicle(),
        '/register': (BuildContext context) =>
            RegistrationScreen(title: 'YVO Service'),
        '/loginpage': (BuildContext context) => MyApp(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hostelbuddy/Screens/details.dart';
import 'package:hostelbuddy/Screens/forgot.dart';
import 'package:hostelbuddy/Screens/hosteltype.dart';
import 'package:hostelbuddy/Screens/landingpage.dart';
import 'package:hostelbuddy/Screens/login.dart';
import 'package:hostelbuddy/Screens/otp.dart';
import 'package:hostelbuddy/Screens/signup.dart';
import 'package:hostelbuddy/Screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
    if (settings.name == '/Login') {
      return MaterialPageRoute(
        builder: (context) => Login(),
      );
    }
    else if (settings.name == '/Signup') {
      return MaterialPageRoute(
        builder: (context) => signup(),
      );
    }
    else if (settings.name == '/welcome') {
      return MaterialPageRoute(
        builder: (context) => welcome(),
      );
    }
    else if (settings.name == '/hosteltype') {
      return MaterialPageRoute(
        builder: (context) => hosteltype(),
      );
    }
    else if (settings.name == '/details') {
      return MaterialPageRoute(
        builder: (context) => details(),
      );
    }
    else if (settings.name == '/forgot') {
      return MaterialPageRoute(
        builder: (context) => forgot(),
      );
    }
    else if (settings.name == '/otp') {
      return MaterialPageRoute(
        builder: (context) => otp(),
      );
    }// Handle other routes if needed
  },
      debugShowCheckedModeBanner: false,
      home: const landing(),
    );
  }
}


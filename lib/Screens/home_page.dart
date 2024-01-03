
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hostelbuddy/Screens/hostel_type.dart';
import 'package:hostelbuddy/Screens/welcome.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasData) {
          return HostelType();
        } else if (snapshot.hasError) {
          return const Center(child: Text('Something went wrong!'));
        } else {
          return const Welcome();
        }
      },
    );
  }
}
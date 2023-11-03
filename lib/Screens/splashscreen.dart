import 'dart:async';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: Center(
        child:Column(
        children: [
          SizedBox(height: 200,),
        Align(
        alignment: Alignment.center,
        child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/Group6.png",
                ),
              )),
            ),
      ),
        ],
      )
    ),);
  }
}
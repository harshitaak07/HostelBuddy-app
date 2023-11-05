import 'package:flutter/material.dart';
import "dart:ui";
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Screens/login.dart';

// ignore: camel_case_types
class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

// ignore: camel_case_types
class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        body: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 270.28,
              width: 240,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/Group6.png",
                ),
              )),
            ),
            Expanded(
                child: Container(
              width: 536,
              height: 390,
              padding: const EdgeInsets.all(25.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Welcome to HostelBuddy!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28,
                      ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Login");
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(294, 54),
                          primary: Colors.black, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Login using OTP or google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )
                  ),
                const SizedBox(
                    height: 20,
                  ),
                const Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  ),
                const SizedBox(
                    height: 20,
                  ),
                Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Signup");
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(294, 54),
                          primary: Colors.black, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                  child: TextButton(
                    child: const Text("Forgot Password? Click Here",style: TextStyle(color: Colors.black,
                      fontSize: 16,),),
                    onPressed: (){
                      Navigator.pushNamed(context, '/forgot');
                    },
                  ),
                  )
                ],
              ),
            )),
          ],
        ));
  }
}
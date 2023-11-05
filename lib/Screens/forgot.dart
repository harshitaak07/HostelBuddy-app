import 'package:flutter/material.dart';
import "dart:ui";

// ignore: camel_case_types
class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

// ignore: camel_case_types
class _forgotState extends State<forgot> {
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
              height: 240,
              width: 270.28,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/Group6.png",
                ),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
                  height: 545,
              width: 700,
              padding: const EdgeInsets.all(45.0),
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
                    "Forgot Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28,
                      ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                  child: Text(
                    "Don’t worry, enter your registered number and we’ll send you a verification code. ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                  ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter your Username/Number",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                  ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(306, 54),
                          primary: Colors.black, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: const TextField(
                       keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 50,
                  ),
                Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otp');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 47.65),
                          primary: Colors.black, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text(
                        "Send OTP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}

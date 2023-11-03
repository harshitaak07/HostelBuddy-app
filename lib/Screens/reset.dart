import 'package:flutter/material.dart';
import "dart:ui";

// ignore: camel_case_types
class reset extends StatefulWidget {
  const reset({super.key});

  @override
  State<reset> createState() => _resetState();
}

// ignore: camel_case_types
class _resetState extends State<reset> {
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
              height: 150,
              width: 125,
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
              width: 700,
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
                    "Create New Password",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 54),
                          primary: Colors
                              .black, //specify the button's elevation color
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
                    height: 40,
                  ),
                  const Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 54),
                          primary: Colors
                              .black, //specify the button's elevation color
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
                    height: 60,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(294, 54),
                          primary: Colors
                              .black, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text(
                        "Done",
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
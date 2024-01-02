import 'package:flutter/material.dart';
import "dart:ui";

import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_button_container.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

// ignore: camel_case_types
class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

// ignore: camel_case_types
class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
            ),
            Container(
              height: 240,
              width: 270.28,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/logo.png",
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
                    height: 25,
                  ),
                  const Text(
                    "Reset Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'sfpro'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  UsernameTextField(
                    text: "Create New Password",
                    onPressed: () {
                      // Define what should happen on button press
                    },textColor: Colors.black, containerColor: Colors.black,keyboardType: TextInputType.visiblePassword
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  UsernameTextField(
                    text: "Confirm Password",
                    onPressed: () {
                      // Define what should happen on button press
                    },textColor: Colors.black, containerColor: Colors.black, keyboardType: TextInputType.visiblePassword
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButtonContainer(
                    buttonText: "Done",
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    }, textColor: Colors.white, containerColor: Colors.black,
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}

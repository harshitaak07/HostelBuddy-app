import 'package:flutter/material.dart';
import "dart:ui";

import 'package:google_fonts/google_fonts.dart';

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
                        fontFamily: 'sfpro'
                      ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                  child: Text(
                    "Create New Password",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 16,
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
                    height: 30,
                  ),
                Align(
                    alignment: Alignment.centerLeft,
                  child: Text(
                    "Confirm Password",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 16,
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
                    height: 40,
                  ),
                Container(
                    child: ElevatedButton(
                      onPressed: () {
                      Navigator.pushNamed(context, '/hosteltype');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(204, 54),
                          primary: Colors.black, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                      child: Text(
                        "Done",
                        style: GoogleFonts.montserrat(
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
        )
    );
  }
}
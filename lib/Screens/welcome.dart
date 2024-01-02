import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/button_containerb.dart';
import 'package:hostelbuddy/Widgets/forgot_password_link.dart';
import 'package:hostelbuddy/Widgets/google_signin_button.dart';

// ignore: camel_case_types
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

// ignore: camel_case_types
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  padding: const EdgeInsets.all(5),
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
              height: 270.28,
              width: 240,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/logo.png",
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
                    height: 15,
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
                    height: 15,
                  ),
                  ButtonContainerB(
                    buttonText: "Login",
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        const Text("                              Or using ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            )),
                        GoogleSignInButton()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "OR",
                    style: GoogleFonts.lexend(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonContainerB(
                    buttonText: "Sign Up",
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signup');
                    },
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ForgotPasswordLink(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot');
                    },
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}

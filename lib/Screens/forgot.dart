import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_button_container.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

// ignore: camel_case_types
class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

// ignore: camel_case_types
class _ForgotState extends State<Forgot> {
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
                    "Forgot Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'sfpro'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Don’t worry, enter your registered number and we’ll send you a verification code. ",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  UsernameTextField(
                    text: "Enter your Username / Number",
                    onPressed: () {
                      // Define what should happen on button press
                    }, textColor: Colors.black, containerColor: Colors.black, keyboardType: TextInputType.multiline
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButtonContainer(
                    buttonText: "Send OTP",
                    onPressed: () {
                      Navigator.pushNamed(context, '/otp');
                    }, containerColor: Colors.black, textColor: Colors.white, 
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}

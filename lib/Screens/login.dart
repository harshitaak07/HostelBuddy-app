import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/forgot_password_link.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        body: Column(
          children: [
            Container(
              width: 700,
              height: 690,
              padding: const EdgeInsets.all(40.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                    ),
                    const Text(
                      'Back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    )
                  ]),
                  const SizedBox(
                    height: 80,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Proceed with your",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'sfpro'),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'sfpro'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  UsernameTextField(
                    text: "Username / Contact Number",
                    onPressed: () {
                      // Define what should happen on button press
                    },textColor: Colors.black, containerColor: Colors.black,keyboardType: TextInputType.multiline
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  UsernameTextField(
                    text: "Password",
                    onPressed: () {
                      // Define what should happen on button press
                    },textColor: Colors.black, containerColor: Colors.black,keyboardType: TextInputType.visiblePassword
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ForgotPasswordLink(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot');
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

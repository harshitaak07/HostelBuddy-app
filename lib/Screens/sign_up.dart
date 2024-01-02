import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_button_container.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

// ignore: camel_case_types
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

// ignore: camel_case_types
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(
              height: 95,
            ),
            Expanded(
              child: Container(
                width: 700,
                padding: const EdgeInsets.all(45.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                      size: 20,
                        ),
                        onPressed: () {
                      Navigator.pop(context);
                        },
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: 'sfpro'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "For Hostel Buddy",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'sfpro'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UsernameTextField(
                      text: "Username",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.black, containerColor: Colors.black, keyboardType: TextInputType.name
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UsernameTextField(
                      text: "Contact Number",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.black, containerColor: Colors.black, keyboardType: TextInputType.phone
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UsernameTextField(
                      text: "Password",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.black, containerColor: Colors.black, keyboardType: TextInputType.visiblePassword
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UsernameTextField(
                      text: "Confirm Password",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.black, containerColor: Colors.black, keyboardType: TextInputType.visiblePassword
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    CustomButtonContainer(
                      buttonText: "Done",
                      onPressed: () {
                        Navigator.pushNamed(context, '/hosteltype');
                      },textColor: Colors.white, containerColor: Colors.black
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

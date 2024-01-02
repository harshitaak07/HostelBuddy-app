import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_button_container.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 157.66,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"))),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 35, right: 10),
                    child: const Text(
                      "HostelBuddy",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    "Enter your hostel room details:",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: 'sfpro'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  UsernameTextField(
                      text: "Registration Number",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.white, containerColor: Colors.white, keyboardType: TextInputType.text,
                    ),
                  const SizedBox(
                    height: 27,
                  ),
                  UsernameTextField(
                      text: "Room Number",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.white, containerColor: Colors.white, keyboardType: TextInputType.text
                    ),
                  const SizedBox(
                    height: 27,
                  ),
                  UsernameTextField(
                      text: "Block",
                      onPressed: () {
                        // Define what should happen on button press
                      },textColor: Colors.white, containerColor: Colors.white, keyboardType: TextInputType.text
                    ),
                  const SizedBox(
                    height: 75,
                  ),
                  CustomButtonContainer(
                      buttonText: "Done",
                      onPressed: () {
                        Navigator.pushNamed(context, '/done');
                      },textColor: Colors.black, containerColor: Colors.white
                    ),
                ],
              )
              ),
            ],
          ),
        ));
  }
}

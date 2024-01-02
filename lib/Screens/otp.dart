import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/custom_colored_container.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        body: Column(
          children: [
            Container(
              width: 700,
              height: 637,
              padding: const EdgeInsets.all(55.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
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
                    const Text(
                      'Back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    )
                  ]),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "One-Time Password",
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Kindly enter the one-time password sent on your registered number",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        CustomColoredContainer(),
                        const SizedBox(
                          width: 13,
                        ),
                        CustomColoredContainer(),
                        const SizedBox(
                          width: 13,
                        ),
                        CustomColoredContainer(),
                        const SizedBox(
                          width: 13,
                        ),
                        CustomColoredContainer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Didn't Get OTP?",
                    style: GoogleFonts.montserrat(
                        color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    "Click Here to resend!",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

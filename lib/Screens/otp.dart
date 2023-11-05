import 'package:flutter/material.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
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
                    height: 60,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "One-Time Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                  child: Text(
                    "Kindly enter the one-time password sent on your registered number",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 18,
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
                        Container(
                          height: 54,
                          width: 60,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0),
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Container(
                          height: 54,
                          width: 60,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0),
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Container(
                          height: 54,
                          width: 60,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0),
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Container(
                          height: 54,
                          width: 60,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0),
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Didn't Get OTP?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const Text(
                    "Click Here to resend!",
                    style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

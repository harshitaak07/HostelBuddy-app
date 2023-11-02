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
              height: 550,
              padding: const EdgeInsets.all(40.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Color(0xFFD9D9D9)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
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
                  const Text(
                    "Kindly enter the one-time password sent on your registered number",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    Container(
                      height: 64,
                      width: 64,
                    color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Container(
                      height: 64,
                      width: 64,
                    color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Container(
                      height: 64,
                      width: 64,
                    color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Container(
                      height: 64,
                      width: 64,
                    color: Colors.black,
                    )
                  ],),
                  const SizedBox(
                    height: 70,
                  ),
                 const Text(
                    "Didn't Get OTP?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                 const Text(
                    "Click Here to resend!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
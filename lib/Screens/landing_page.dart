import 'package:flutter/material.dart';
import 'package:hostelbuddy/Widgets/button_containerw.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container( // Image
              width: MediaQuery.of(context).size.width,
              height: 480,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/landing.png"),
                ),
              ),
            ),
            Container( // Text
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "hostelbuddy.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.white,
                          fontFamily: 'sfpro'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "HostelBuddy helps you deal with your campus conveniences with ease that will make you smile.",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'hel'),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ButtonContainerW(
                    buttonText: "Get Started",
                    onPressed: () {
                      Navigator.pushNamed(context, '/welcome');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

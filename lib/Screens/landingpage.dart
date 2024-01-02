import 'package:flutter/material.dart';

class landingpage extends StatefulWidget {
  const landingpage({super.key});

  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 480,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/landing.png"),
                ),
              ),
            ),
            Container(
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
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/welcome');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(294, 54),
                          primary: Colors
                              .white, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontFamily: 'sfpro'),
                      ),
                    ),
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

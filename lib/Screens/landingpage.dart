import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class landing extends StatefulWidget {
  const landing({super.key});

  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/brr.png"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "hostelbuddy.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "HostelBuddy helps you deal with your campus conveniences with ease that will make you smile.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/welcome');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(294, 54),
                        primary:
                            Colors.white, //specify the button's elevation color
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pickup extends StatefulWidget {
  const Pickup({super.key});

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 35, right: 10),
                height: 140,
                width: 157.66,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              )
            ],
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Pick Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              )),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "a Parcel or Order",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Colors.white),
              )),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(80.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Current Location",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 177,
                    height: 40,
                    color: Colors.white,
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          items: <String>['In front of E Block', 'Library']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Pickup Location",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 177,
                    height: 40,
                    color: Colors.white,
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          items: <String>['In front of E Block', 'Library']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 71,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/request');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 53),
                          primary: const Color(
                              0xFF202020), //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: const BorderSide(color: Colors.white))),
                      child: const Text(
                        "Find",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontFamily: 'sfpro'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

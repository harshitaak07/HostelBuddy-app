import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class request extends StatefulWidget {
  const request({super.key});

  @override
  State<request> createState() => _requestState();
}

class _requestState extends State<request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: Container(
        padding: const EdgeInsets.all(35.0),
        child: Column(children: [
          const SizedBox(
            height: 90,
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Request",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              )),
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "a delivery",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Colors.white),
              )),
          const SizedBox(
            height: 40,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Company",
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 177,
                        height: 40,
                        color: Colors.white,
                        child: const TextField(
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Item/Parcel",
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 177,
                        height: 40,
                        color: Colors.white,
                        child: const TextField(
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 177,
                        height: 40,
                        color: Colors.white,
                        child: Row(
                          children: [
                            DropdownButton<String>(
                              items: <String>['In front of E block', 'Library']
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
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Deliver To",
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 177,
                        height: 40,
                        color: Colors.white,
                        child: Row(
                          children: [
                            DropdownButton<String>(
                              items: <String>['In front of E block', 'Library']
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
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/initialize');
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 53),
                            primary: const Color(
                                0xFF202020), //specify the button's elevation color
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: const BorderSide(color: Colors.white))),
                        child: const Text(
                          "Proceed",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontFamily: 'sfpro'),
                        ),
                      ),
                    ),
                  ])))
        ]),
      ),
    );
  }
}

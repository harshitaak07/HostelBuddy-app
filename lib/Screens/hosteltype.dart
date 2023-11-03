import 'package:flutter/material.dart';

class hosteltype extends StatefulWidget {
  const hosteltype({super.key});

  @override
  State<hosteltype> createState() => _hosteltypeState();
}

class _hosteltypeState extends State<hosteltype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF202020),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 200,
                width: 700,
                decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Group6.png")),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Kindly Select",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Your Hostel Type",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, '/details');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(310, 45),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  child: Row(
                     children: [
                      const Align(
                        alignment: Alignment.center,
                      child: Text(
                        "Men's Hostel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            decoration: TextDecoration.underline),
                      ),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/men.png")),
                        ),
                      ),
                    ])
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(310, 45),
                        primary:
                            Colors.white, //specify the button's elevation color
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    child: Row(
                     children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/women.png")),
                        ),
                      ),
                      SizedBox(width: 40,),
                      const Align(
                        alignment: Alignment.center,
                      child: Text(
                        "Ladies' Hostel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            decoration: TextDecoration.underline),
                      ),
                      ),
                    ])),
              ),
            ],
          ),
        ));
  }
}
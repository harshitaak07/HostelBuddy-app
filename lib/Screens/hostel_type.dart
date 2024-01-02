import 'package:flutter/material.dart';

class HostelType extends StatefulWidget {
  const HostelType({super.key});

  @override
  State<HostelType> createState() => _HostelTypeState();
}

class _HostelTypeState extends State<HostelType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF202020),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
            ),
              Container(
                height: 240,
                width: 270.28,
                decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/logo.png")),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Kindly Select your",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Hostel Type:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, '/details');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(295,44),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  child: Row(
                     children: [
                      SizedBox(
                        width: 70,
                      ),
                      const Align(
                        alignment: Alignment.center,
                      child: Text(
                        "Men's Hostel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,),
                      ),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("")),
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
                        minimumSize: Size(295,44),
                        primary:
                            Colors.white, //specify the button's elevation color
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                    child: Row(
                     children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("")),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                      child: Text(
                        "Ladies' Hostel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            ),
                      ),
                      ),
                    ])),
              ),
            ],
          ),
        ));
  }
}
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF202020),
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Group6.png"))),
                  ),
                  const Text(
                    "HostelBuddy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Enter your hostel room details",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Registration Number",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 54),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
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
                height: 25,
              ),
              const Text(
                "Room Number",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 54),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
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
                height: 25,
              ),
              const Text(
                "Block",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 54),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const TextField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 54),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  child: const Text(
                    "Done",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(270, 54),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  child: const Text(
                    "Fill Later",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

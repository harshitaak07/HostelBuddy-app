import 'package:flutter/material.dart';

class Initialize extends StatefulWidget {
  const Initialize({super.key});

  @override
  State<Initialize> createState() => _InitializeState();
}

class _InitializeState extends State<Initialize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 35, right: 10),
                    height: 140,
                    width: 157.66,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"))),
                  )
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                  padding: const EdgeInsets.all(25.0),
                  child: const Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Lorem ipusm",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Lorem ipusm",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Courier",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Lorem ipusm",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ]))
            ],
          ),
          const SizedBox(height: 125),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 0, bottom: 0),
                height: 110,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Ellipse 9.png"))),
              )
            ],
          ),
        ]));
  }
}

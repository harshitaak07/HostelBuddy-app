import 'package:flutter/material.dart';

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
                  image: DecorationImage(
                    image: AssetImage("assets/Group6.png")),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Align(alignment:Alignment.centerLeft, child: Text("hostelbuddy.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),),),
              const SizedBox(
                height: 30,
              ),
              const Text("HostelBuddy helps you deal with your campus conveniences with ease that will make you smile.", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18,color: Colors.white),textAlign: TextAlign.left,),
               const SizedBox(
                height: 30,
              ),
              Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/welcome');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(294, 54),
                          primary: Colors.white, //specify the button's elevation color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text(
                        "Get Started",
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

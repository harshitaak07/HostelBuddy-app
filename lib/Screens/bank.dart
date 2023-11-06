import 'package:flutter/material.dart';
import 'package:hostelbuddy/Widgets/HamDrawer.dart';

class bank extends StatefulWidget {
  const bank({super.key});

  @override
  State<bank> createState() => _bankState();
}

class _bankState extends State<bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "HostelBuddy",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
      ),
      drawer: const HamDrawer(),
      backgroundColor: const Color(0xFF202020),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hello",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Lorem Ipsum",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/image7.png"),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Pickup",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 110,
                          width: 85,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/image6.png"),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Delivery",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            const SizedBox(
              height: 55,
            ),
            Container(
              height: 93,
              width: 308,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white, width: 1),
                color: Colors.transparent,
              ),
              child: Row(children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image8.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Navigation/Tracking",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 160.71,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.yellow, width: 1),
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: 300,
                    height: 127.59,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      color: Colors.yellow,
                    ),
                    child: const Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.more_vert),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Overall Balance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rs XYZ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Check Hostel Buddy History",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

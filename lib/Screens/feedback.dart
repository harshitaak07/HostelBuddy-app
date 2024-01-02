import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Feedback extends StatefulWidget {
  const Feedback({super.key});

  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 104,
                width: 104,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              ),
            ),
            const Text(
              "Share your experience!",
              style: TextStyle(
                  fontFamily: 'sfpro',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Safety",
                style: TextStyle(
                    fontFamily: 'sfpro',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                itemSize: 20,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Commmunication",
                style: TextStyle(
                    fontFamily: 'sfpro',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 283.37,
              width: 273,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.white,
                border: const Border(
                  left: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(children: [
              const SizedBox(width: 30),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(128, 38),
                      primary:
                          Colors.white, //specify the button's elevation color
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: const BorderSide(color: Colors.white))),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontFamily: 'sfpro'),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              const Column(children: [
                Text(
                  "Would you recommend?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontFamily: 'sfpro'),
                ),
                Icon(
                  Icons.thumbs_up_down,
                  size: 20,
                  color: Colors.white,
                ),
              ])
            ])
          ],
        ),
      ),
    );
  }
}

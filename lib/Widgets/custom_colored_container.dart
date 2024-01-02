import 'package:flutter/material.dart';
// otp box function
class CustomColoredContainer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(4.0),
          bottomRight: Radius.circular(4.0),
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
        color: Colors.black,
      ),
    );
  }
}

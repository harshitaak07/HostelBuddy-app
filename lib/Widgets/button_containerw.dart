import 'package:flutter/material.dart';
// white button function
class ButtonContainerW extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonContainerW({
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(294, 54),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontFamily: 'sfpro',
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// Small Button function
class CustomButtonContainer extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color textColor;
  final Color containerColor;

  const CustomButtonContainer({
    required this.buttonText,
    required this.onPressed,
    required this.textColor,
    required this.containerColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(180, 47.65),
          primary: containerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            letterSpacing: 1,
            decoration: TextDecoration.underline,
            fontFamily: 'sfpro',
          ),
        ),
      ),
    );
  }
}


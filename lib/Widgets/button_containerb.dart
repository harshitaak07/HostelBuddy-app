import 'package:flutter/material.dart';
// Black Button function
class ButtonContainerB extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonContainerB({
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
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// Black Button function
class ButtonContainerB extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

 const ButtonContainerB({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(294, 54), backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

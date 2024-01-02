import 'package:flutter/material.dart';
// white button function
class ButtonContainerW extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonContainerW({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(294, 54), backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          fontFamily: 'sfpro',
        ),
      ),
    );
  }
}

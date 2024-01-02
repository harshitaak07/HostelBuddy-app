import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Input fields function
class UsernameTextField extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color containerColor;
  final TextInputType keyboardType;

  const UsernameTextField({
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.containerColor,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              color: textColor,
              fontSize: 16,
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(306, 54),
                primary: containerColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: TextField(
                keyboardType: keyboardType,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

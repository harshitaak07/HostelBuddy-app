import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsernameTextField extends StatefulWidget {
  final String text;
  final Function(String) onValueChanged; // Callback function for value changes
  final Color textColor;
  final Color containerColor;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Validator function

  const UsernameTextField({
    Key? key,
    required this.text,
    required this.onValueChanged,
    required this.textColor,
    required this.containerColor,
    required this.keyboardType,
    required this.controller,
    this.validator, // Optional validator parameter
  }) : super(key: key);

  @override
  _UsernameTextFieldState createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<UsernameTextField> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              color: widget.textColor,
              fontSize: 16,
            ),
          ),
          ElevatedButton(
            onPressed: () {}, // No onPressed callback here
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(306, 54),
              backgroundColor: widget.containerColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: TextFormField(
              keyboardType: widget.keyboardType,
              controller: widget.controller,
              onChanged: widget.onValueChanged, // Call the callback on value changes
              validator: widget.validator, // Set the validator function
              style: TextStyle(
                color: widget.textColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



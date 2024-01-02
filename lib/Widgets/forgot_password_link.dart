import 'package:flutter/material.dart';
// Forgot password, click here function
class ForgotPasswordLink extends StatelessWidget {
  final VoidCallback onPressed;

  const ForgotPasswordLink({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          TextButton(
            child: const Text(
              "Forgot Password? Click Here",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

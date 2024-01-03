import 'package:flutter/material.dart';
import 'package:hostelbuddy/Services/google_sign_in.dart';
import 'package:provider/provider.dart'; // Import Provider
// Google symbol login page function
class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () async {
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
              await provider.googleLogin();
            },
            child: Container(
              child: Image.network(
                'http://pngimg.com/uploads/google/google_PNG19635.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

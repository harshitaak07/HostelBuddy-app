import 'package:flutter/material.dart';
import 'package:hostelbuddy/Services/auth.dart';
import 'package:hostelbuddy/Widgets/custom_button_container.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbuddy/Widgets/forgot_password_link.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF202020),
        body: Form(
          key: _formKey,
          child: Column(
          children: [
            Container(
              width: 700,
              height: 690,
              padding: const EdgeInsets.all(40.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Text(
                      'Back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    )
                  ]),
                  const SizedBox(
                    height: 80,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Proceed with your",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'sfpro'),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'sfpro'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  UsernameTextField(
                    text: "Email",
                    onValueChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    textColor: Colors.black,
                    containerColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter a valid Email";
                      }
                      // Add more validation conditions if needed
                      return null; // Return null if the input is valid
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  UsernameTextField(
                    text: "Password",
                    onValueChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    textColor: Colors.black,
                    containerColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.length < 6) {
                        return "Please enter a valid Password";
                      }
                      // Add more validation conditions if needed
                      return null; // Return null if the input is valid
                    },
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  CustomButtonContainer(
                      buttonText: "Done",
                      onPressed: () async {
                        /*if(_formKey.currentState?.validate() ?? false){
                          dynamic result = await _auth.signInEmail(email, password);
                          if (result == null) {
                            setState(() =>
                                error = 'Could not sign in with given credentials');
                          } else {
                            Navigator.pushNamed(context, '/hosteltype');
                          }
                        }*/
                      },textColor: Colors.white, containerColor: Colors.black
                    ),
                  ForgotPasswordLink(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot');
                    },
                  ),
                ],
              ),
            ),
          ],)
        ));
  }
}

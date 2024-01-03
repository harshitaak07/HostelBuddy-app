import 'package:flutter/material.dart';
import 'package:hostelbuddy/Services/auth.dart';
import 'package:hostelbuddy/Widgets/custom_button_container.dart';
import 'package:hostelbuddy/Widgets/username_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String passwordConfirm = '';
  String error = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordConfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 95,
            ),
            Expanded(
              child: Container(
                width: 700,
                padding: const EdgeInsets.all(45.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: 'sfpro',
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "For Hostel Buddy",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'sfpro',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UsernameTextField(
                      text: "Create New Password",
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
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UsernameTextField(
                      text: "Confirm Password",
                      onValueChanged: (value) {
                        setState(() {
                          passwordConfirm = value;
                        });
                      },
                      textColor: Colors.black,
                      containerColor: Colors.black,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordConfController,
                      validator: (value) {
                        if (value! != password) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    CustomButtonContainer(
                      buttonText: "Done",
                      onPressed: () async {
                        /*if (_formKey.currentState?.validate() ?? false) {
                          dynamic result =
                              await _auth.registerWithEmailAndPassword(
                                  email, passwordConfirm);
                          if (result == null) {
                            setState(() =>
                                error = 'Please supply valid credentials');
                          } else {
                            Navigator.pushNamed(context, '/hosteltype');
                          }
                        }*/
                      },
                      textColor: Colors.white,
                      containerColor: Colors.black,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(error, style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hostelbuddy/Screens/navigation.dart';
import 'package:hostelbuddy/Screens/pickup.dart';
import 'package:hostelbuddy/Screens/bank.dart';
import 'package:hostelbuddy/Screens/details.dart';
import 'package:hostelbuddy/Screens/forgot.dart';
import 'package:hostelbuddy/Screens/hostel_type.dart';
import 'package:hostelbuddy/Screens/landing_page.dart';
import 'package:hostelbuddy/Screens/login.dart';
import 'package:hostelbuddy/Screens/otp.dart';
import 'package:hostelbuddy/Screens/account.dart';
// import 'package:hostelbuddy/Screens/feedback.dart';
import 'package:hostelbuddy/Screens/initialize.dart';
import 'package:hostelbuddy/Screens/delivery.dart';
import 'package:hostelbuddy/Screens/reset.dart';
import 'package:hostelbuddy/Screens/sign_up.dart';
import 'package:hostelbuddy/Screens/welcome.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hostelbuddy/Services/google_sign_in.dart';

import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
          ),
          onGenerateRoute: (settings) {
            if (settings.name == '/Login') {
              return MaterialPageRoute(
                builder: (context) => const Login(),
              );
            } else if (settings.name == '/Signup') {
              return MaterialPageRoute(
                builder: (context) => const SignUp(),
              );
            } else if (settings.name == '/welcome') {
              return MaterialPageRoute(
                builder: (context) => const Welcome(),
              );
            } else if (settings.name == '/hosteltype') {
              return MaterialPageRoute(
                builder: (context) => const HostelType(),
              );
            } else if (settings.name == '/details') {
              return MaterialPageRoute(
                builder: (context) => const Details(),
              );
            } else if (settings.name == '/forgot') {
              return MaterialPageRoute(
                builder: (context) => const Forgot(),
              );
            } else if (settings.name == '/otp') {
              return MaterialPageRoute(
                builder: (context) => const Otp(),
              );
            } else if (settings.name == '/done') {
              return MaterialPageRoute(
                builder: (context) => const Bank(),
              );
            } else if (settings.name == '/pickup') {
              return MaterialPageRoute(
                builder: (context) => const Pickup(),
              );
            } /*else if (settings.name == '/feedback') {
              return MaterialPageRoute(
                builder: (context) => Feedback(),
              );
            } */ else if (settings.name == '/initialize') {
              return MaterialPageRoute(
                builder: (context) => const Initialize(),
              );
            } else if (settings.name == '/account') {
              return MaterialPageRoute(
                builder: (context) => const Account(),
              );
            } else if (settings.name == '/nav') {
              return MaterialPageRoute(
                builder: (context) => const Nav(),
              );
            } else if (settings.name == '/delivery') {
              return MaterialPageRoute(
                builder: (context) => const Delivery(),
              );
            } else if (settings.name == '/reset') {
              return MaterialPageRoute(
                builder: (context) => const Reset(),
              );
            }
            return MaterialPageRoute(
              builder: (context) => const LandingPage(),
            );
      
            /// Handle other routes if needed
          },
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: const LandingPage(),
        ),
    );
  }
}

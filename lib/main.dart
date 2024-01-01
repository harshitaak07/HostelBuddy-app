import 'package:flutter/material.dart';
import 'package:hostelbuddy/Screens/Navigation.dart';
import 'package:hostelbuddy/Screens/pickup.dart';
import 'package:hostelbuddy/Screens/bank.dart';
import 'package:hostelbuddy/Screens/details.dart';
import 'package:hostelbuddy/Screens/forgot.dart';
import 'package:hostelbuddy/Screens/hosteltype.dart';
import 'package:hostelbuddy/Screens/landingpage.dart';
import 'package:hostelbuddy/Screens/login.dart';
import 'package:hostelbuddy/Screens/otp.dart';
import 'package:hostelbuddy/Screens/account.dart';
import 'package:hostelbuddy/Screens/feedback.dart';
import 'package:hostelbuddy/Screens/initialize.dart';
import 'package:hostelbuddy/Screens/request.dart';
import 'package:hostelbuddy/Screens/reset.dart';
import 'package:hostelbuddy/Screens/signup.dart';
import 'package:hostelbuddy/Screens/welcome.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hostelbuddy/Widgets/google_sign_in.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Error reinitializing Firebase: $e');
  }
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => googleSignInProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        onGenerateRoute: (settings) {
          if (settings.name == '/Login') {
            return MaterialPageRoute(
              builder: (context) => Login(),
            );
          } else if (settings.name == '/Signup') {
            return MaterialPageRoute(
              builder: (context) => signup(),
            );
          } else if (settings.name == '/welcome') {
            return MaterialPageRoute(
              builder: (context) => welcome(),
            );
          } else if (settings.name == '/hosteltype') {
            return MaterialPageRoute(
              builder: (context) => hosteltype(),
            );
          } else if (settings.name == '/details') {
            return MaterialPageRoute(
              builder: (context) => details(),
            );
          } else if (settings.name == '/forgot') {
            return MaterialPageRoute(
              builder: (context) => forgot(),
            );
          } else if (settings.name == '/otp') {
            return MaterialPageRoute(
              builder: (context) => otp(),
            );
          } else if (settings.name == '/done') {
            return MaterialPageRoute(
              builder: (context) => bank(),
            );
          } else if (settings.name == '/pickup') {
            return MaterialPageRoute(
              builder: (context) => pickup(),
            );
          } else if (settings.name == '/feedback') {
            return MaterialPageRoute(
              builder: (context) => feedback(),
            );
          } else if (settings.name == '/initialize') {
            return MaterialPageRoute(
              builder: (context) => initialize(),
            );
          } else if (settings.name == '/account') {
            return MaterialPageRoute(
              builder: (context) => account(),
            );
          } else if (settings.name == '/nav') {
            return MaterialPageRoute(
              builder: (context) => nav(),
            );
          } else if (settings.name == '/request') {
            return MaterialPageRoute(
              builder: (context) => request(),
            );
          } else if (settings.name == '/reset') {
            return MaterialPageRoute(
              builder: (context) => reset(),
            );
          }
          return MaterialPageRoute(
            builder: (context) => landingpage(),
          );

          /// Handle other routes if needed
        },
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: landingpage(),
      ),
    );
  }
}

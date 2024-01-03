import 'package:firebase_auth/firebase_auth.dart';
import 'package:hostelbuddy/modals/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AuthService.initializeApp();
  AuthService();

  OurUser? _userFromFirebaseUser(User? user) {
    return user != null ? OurUser(uid: user.uid) : null;
  }

  Stream<OurUser?> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user));
  }

  // register with email and password
  Future<OurUser?> registerWithEmailAndPassword(String email, String password) async {
    try { 
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print('Error registering user: $e');
      return null;
    }
  }

   // sign in with email & password
  Future signInEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}



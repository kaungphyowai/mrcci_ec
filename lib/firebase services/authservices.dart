import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Auth {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future login(email, password) async {
    var result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return result;
  }

  Future signout() async {
    _auth.signOut();
  }
  // Future signIn(String email, String pass) async {
  //   load = true;
  //   var result = await _authenticationService.loginWithEmail(
  //       email: email, password: pass);
  //   load = false;
  //   if (result is bool) {
  //     if (result) {
  //       print('login successful');
  //     } else {
  //       print(result);
  //     }
  //   } else {
  //     print(result);
  //   }
  // }
}

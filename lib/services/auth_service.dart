import 'package:baraka/screens/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

Future<void> signInWithGoogle() async {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  // Trigger the Google Authentication flow
  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

  // Authenticate with Firebase using the Google token
  final OAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);

  // Return the user credential
  if (userCredential.user != null) {
    // Navigator.pushNamed(context, HomeScreen.id);
  }
}

// Future<UserCredential> signInWithFacebook() async {
//   try {
//     // Trigger the Facebook Authentication flow
//     final LoginResult result = await FacebookAuth.instance.login();

//     // Authenticate with Firebase using the Facebook token
//     final OAuthCredential credential =
//         FacebookAuthProvider.credential(result.accessToken!.token);
//     final UserCredential userCredential =
//         await FirebaseAuth.instance.signInWithCredential(credential);

//     // Return the user credential
//     return userCredential;
//   } on FacebookAuthException catch (e) {
//     // Handle authentication errors
//     print(e.message);
//     // Return null to indicate failure
//     return UserCredential;
//   }


// Future<UserCredential> signInWithPhone(String phoneNumber) async {
//      // Trigger the phone number Authentication flow
 
 
// }

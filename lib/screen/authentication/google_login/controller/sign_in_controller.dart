

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController{
  bool isLoading=false;
  final   googleSinIn=GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user=>_user!;
  Future googleLogin()async{
    isLoading=true;
    update();
    final googleUser= await googleSinIn.signIn();
    if(googleUser==null) return;
    _user=googleUser;
    final googleAuth=await googleUser.authentication;
    final credential=GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken

    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    isLoading=false;
    update();
  }
}
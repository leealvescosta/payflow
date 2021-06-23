import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pay_flow/models/user_model.dart';
import 'package:pay_flow/shared/auth/auth_controller.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      final res = await _googleSignIn.signIn();
      final user = UserModel(
        name: res!.displayName!,
        photoUrl: res.photoUrl,
      );
      authController.setUser(context, user);
      print(res);
    } catch (e) {
      authController.setUser(context, null);
      print(e);
    }
  }
}

import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      final res = await _googleSignIn.signIn();
      print(res);
    } catch (e) {
      print(e);
    }
  }
}

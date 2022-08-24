import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _googlesignIn = GoogleSignIn(clientId:"com.example.odc_hackathon_lavie_app");

  static Future<GoogleSignInAccount?> login() => _googlesignIn.signIn();
  static Future<GoogleSignInAccount?> signOut() => _googlesignIn.signOut();
}

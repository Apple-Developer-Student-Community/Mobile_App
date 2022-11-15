import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Screens/HomeScreen/home_page.dart';
import 'Screens/LoginScreen/login_page.dart';

final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
GoogleSignInAccount? currentUser;

class CheckAuth extends StatefulWidget {
  const CheckAuth({Key? key}) : super(key: key);

  @override
  State<CheckAuth> createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  @override
  void initState() {
    googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        currentUser = account;
      });
    });
    googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = currentUser;
    if (user != null) {
      return HomePage();
    } else {
      return LoginPage();
    }
  }
}

void signIn() async {
  try {
    await googleSignIn.signIn();
  } catch (e) {
    print("Error: SignIn error is $e");
  }
}

void signOut() {
  googleSignIn.disconnect();
}

import 'package:apple_student_community/Screens/LoginScreen/login_page.dart';
import 'package:apple_student_community/Screens/detailsScreen/team_details_page.dart';
import 'package:flutter/material.dart';

import 'Screens/HomeScreen/home_page.dart';
import 'Screens/feedsScreen/feeds_page.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _buildWidget(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/teamDetails': (context) => const TeamDetailsPage(),
        '/login': (context) => LoginPage(
              press: signIn,
            ),
        '/feeds': (context) => const FeedsPage(),
      },
    );
  }

  Widget _buildWidget() {
    GoogleSignInAccount? user = _currentUser;
    if (user != null) {
      return HomePage(
        profilePicture: GoogleUserCircleAvatar(identity: user),
        name: user.displayName!,
        email: user.email,
        press: signOut,
        user: user,
      );
    } else {
      return FeedsPage();
      // return LoginPage(press: signIn);
    }
  }

  void signIn() async{
    try{
      await _googleSignIn.signIn();
    }catch(e){
      print("Error: SignIn error is $e");
    }
  }

  void signOut() {
    _googleSignIn.disconnect();
  }
}

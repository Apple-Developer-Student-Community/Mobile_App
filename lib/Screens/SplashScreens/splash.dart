import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => {
              if (FirebaseAuth.instance.currentUser == null)
                {Navigator.pushReplacementNamed(context, '/login')}
              else
                {Navigator.pushReplacementNamed(context, '/')}
            });
  }

  final spin = const SpinKitChasingDots(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image(
                    image: AssetImage(
                        'assets/images/think-different-7462048__480.webp')),
                spin
              ],
            ),
          ),
        ],
      ),
    );
  }
}

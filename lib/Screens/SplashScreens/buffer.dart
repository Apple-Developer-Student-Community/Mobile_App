import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => {Navigator.pushReplacementNamed(context, '/')});
  }

  @override
  Widget build(BuildContext context) {
    final spin = const SpinKitThreeBounce(color: Colors.white);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: spin,
      ),
    );
  }
}

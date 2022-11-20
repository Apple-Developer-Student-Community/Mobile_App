import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/think-different-7462048__480.webp')),
            Text(
              "Sorry!",
              style: TextStyle(fontSize: 28, color: Colors.red),
            ),
            Text(
              "Srijan Samridh is still Working on this SECTION\nhe'll fix it soon...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

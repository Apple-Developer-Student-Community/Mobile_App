import 'package:apple_student_community/Screens/Components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

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
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.white10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off_sharp, size: 50, color: Colors.deepOrangeAccent),
            SizedBox(height: 5),
            Text(
              "There are No Notifications for Now!",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

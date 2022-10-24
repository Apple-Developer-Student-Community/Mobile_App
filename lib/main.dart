import 'package:apple_student_community/Screens/detailsScreen/team_details_page.dart';
import 'package:flutter/material.dart';

import 'Screens/HomeScreen/home_page.dart';
import 'Screens/feedsScreen/feeds_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/teamDetails': (context) => const TeamDetailsPage(),
        '/feeds': (context) => const FeedsPage(),
      },
    );
  }
}

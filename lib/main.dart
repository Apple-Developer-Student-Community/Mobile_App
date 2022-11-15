import 'package:apple_student_community/Screens/HomeScreen/home_page.dart';
import 'package:apple_student_community/Screens/LoginScreen/login_page.dart';
import 'package:apple_student_community/Screens/NotificationScreen/notification_page.dart';
import 'package:apple_student_community/Screens/detailsScreen/team_details_page.dart';
import 'package:apple_student_community/splash.dart';
import 'package:flutter/material.dart';

import 'Screens/feedsScreen/feeds_page.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/': (context) => HomePage(),
        '/teamDetails': (context) => const TeamDetailsPage(),
        '/login': (context) => LoginPage(),
        '/feeds': (context) => const FeedsPage(),
        '/notification': (context) => const NotificationPage(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}

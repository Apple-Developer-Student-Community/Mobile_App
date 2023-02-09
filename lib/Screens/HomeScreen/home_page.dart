import 'package:apple_student_community/Screens/HomeScreen/components/body.dart';
import 'package:apple_student_community/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import '../Components/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user;

  @override
  void initState() {
    super.initState();
    User? newUser = FirebaseAuth.instance.currentUser;
    setState(() {
      user = newUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: buildAppBar(user!),
      drawer: MyDrawer(),
      body: const Body(),
      // bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar(dynamic user) {
  return AppBar(
    backgroundColor: bg,
    elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.white10,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.widgets_outlined,
                color: Colors.grey,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        );
      },
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: user != Null
            ? CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.photoURL),
                ),
              )
            : Icon(CupertinoIcons.person),
      )
    ],
  );
}

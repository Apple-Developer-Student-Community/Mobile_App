import 'package:apple_student_community/Screens/HomeScreen/components/body.dart';
import 'package:apple_student_community/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/widgets.dart';

import '../Components/bottom_navigation_bar.dart';
import '../Components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {Key? key,
      this.name = "",
      this.email = "",
      required this.press,
      required this.profilePicture,
      required this.user})
      : super(key: key);

  final String name, email;
  final VoidCallback press;
  final GoogleUserCircleAvatar profilePicture;
  final GoogleSignInAccount user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: buildAppBar(user, profilePicture),
      drawer: MyDrawer(
        name: name,
        email: email,
        press: press,
        profilePicture: profilePicture,
      ),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar(GoogleSignInAccount user, GoogleUserCircleAvatar profilePicture) {
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
        child: user != Null? CircleAvatar(child: profilePicture) : Icon(CupertinoIcons.person),
      )
    ],
  );
}

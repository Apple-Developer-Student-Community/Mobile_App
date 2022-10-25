import 'package:apple_student_community/Screens/HomeScreen/components/body.dart';
import 'package:apple_student_community/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/widgets.dart';

import '../Components/bottom_navigation_bar.dart';
import '../Components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {Key? key,
      this.name = "",
      this.email = "",
      required this.press,
      required this.profilePicture})
      : super(key: key);

  final String name, email;
  final VoidCallback press;
  final GoogleUserCircleAvatar profilePicture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: buildAppBar(),
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

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: bg,
    elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.widgets_outlined,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(CupertinoIcons.person),
      )
    ],
  );
}

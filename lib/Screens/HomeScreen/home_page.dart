import 'package:apple_student_community/Screens/HomeScreen/components/body.dart';
import 'package:apple_student_community/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/bottom_navigation_bar.dart';
import '../Components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: buildAppBar(),
      drawer: MyDrawer(
        name: 'Srijan Samridh',
        email: 'srijan@gmail.com',
        press: () {},
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

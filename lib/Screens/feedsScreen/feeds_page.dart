import 'package:apple_student_community/Screens/feedsScreen/components/body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Components/bottom_navigation_bar.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(title: Text('Community Feed'), backgroundColor: Colors.black54,),
      body: Body(),
      // bottomNavigationBar: const MyBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey,
        child: Icon(
          FontAwesomeIcons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'feed_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Container(
          //   color: Colors.black54,
          //   height: 100,
          //   child: Center(
          //    child: SafeArea(
          //       child: Text(
          //        'Community Feed',
          //        textAlign: TextAlign.center,
          //      ),
          //    ),
          //     ),
          // ),
          FeedCard(
            profileName: 'SrijanSamridh',
            imgURL: 'assets/images/srijan.png',
            bio: 'Need to Work Much more Harder!',
            likes: '112,912',
            postTime: '30 minutes',
          ),
          FeedCard(
            profileName: 'ShreyasMahajan',
            imgURL: 'assets/images/shreyas_mahajan.png',
            bio: 'It\'s time to grow Internally!',
            likes: '212,912',
            postTime: '1 hour',
          ),
          FeedCard(
            profileName: 'Abhay',
            imgURL: 'assets/images/abhay.png',
            bio: 'It\'s time to grow Internally!',
            likes: '212,912',
            postTime: '1 hour',
          ),
        ],
      ),
    );
  }
}

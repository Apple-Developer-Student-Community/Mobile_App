import 'package:flutter/material.dart';

import 'member_container.dart';

class FoundersInfo extends StatelessWidget {
  const FoundersInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MemberContainer(
          image: Image.asset('assets/images/srijanPic.png'),
          title: 'Srijan Samridh',
          desc: 'Founder', instaAccount: () {  }, linkedinAccount: () {  },
        ),
        MemberContainer(
          image: Image.asset('assets/images/druv.JPG'),
          title: 'Dhruv Bhatnagar',
          desc: 'Founder', instaAccount: () {  }, linkedinAccount: () {  },
        ),
      ],
    );
  }
}

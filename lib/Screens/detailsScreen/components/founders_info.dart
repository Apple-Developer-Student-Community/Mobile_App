import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          desc: 'Founder',
          instaAccount: Uri.parse('https://www.instagram.com/srijansamridh/'),
          linkedinAccount: Uri.parse('https://www.linkedin.com/in/srijan-samridh/'),
        ),
        MemberContainer(
          image: Image.asset('assets/images/druv.JPG'),
          title: 'Dhruv Bhatnagar',
          desc: 'Founder',
          instaAccount: Uri.parse('https://www.instagram.com/dhruvsaysfml/'),
          linkedinAccount: Uri.parse('https://www.linkedin.com/in/dhruvbhtngr/'),
        ),
      ],
    );
  }
}

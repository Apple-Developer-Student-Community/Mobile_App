import 'package:flutter/material.dart';

import '../../HomeScreen/components/section_heading.dart';
import 'member_container.dart';

class DesignMembersCard extends StatelessWidget {
  const DesignMembersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SectionHeading(title: "Chief UI/UX"),
            MemberContainer(
              image: Image.asset('assets/images/Sanya.png'),
              title: 'Sanya Khanna',
              desc: 'Chief UI/UX',
              instaAccount: Uri.parse('https://www.google.com'),
              linkedinAccount: Uri.parse('https://www.google.com'),
            ),
          ],
        ),
        Column(
          children: [
            SectionHeading(title: "Chief Media"),
            MemberContainer(
              image: Image.asset('assets/images/shreyas_mahajan.png'),
              title: 'Shreyas Mahajan',
              desc: 'Chief Media',
              instaAccount: Uri.parse('https://www.google.com'),
              linkedinAccount: Uri.parse('https://www.google.com'),
            ),
          ],
        ),
      ],
    );
  }
}
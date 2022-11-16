import 'package:flutter/material.dart';

import '../../HomeScreen/components/section_heading.dart';
import 'member_container.dart';

class TechMembersCard extends StatelessWidget {
  const TechMembersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SectionHeading(title: "Chief Front-End"),
            MemberContainer(
              image: Image.asset('assets/images/abhay.png'),
              title: 'Abhay Aggarwal',
              desc: 'Chief Front-End',
              instaAccount: () {},
              linkedinAccount: () {},
            ),
          ],
        ),
        Column(
          children: [
            SectionHeading(title: "Chief Back-End"),
            MemberContainer(
              image: Image.asset('assets/images/Ishan_singla.jpeg'),
              title: 'Ishan Singla',
              desc: 'Chief Back-End',
              instaAccount: () {},
              linkedinAccount: () {},
            ),
          ],
        ),
      ],
    );
  }
}



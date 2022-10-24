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
      children: [
        Column(
          children: [
            SectionHeading(title: "Chief UI/UX"),
            MemberContainer(
              image: Image.asset('assets/images/Sanya.png'),
              title: 'Sanya Khanna',
              desc: 'Chief UI/UX',
              instaAccount: () {},
              linkedinAccount: () {},
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
              instaAccount: () {},
              linkedinAccount: () {},
            ),
          ],
        ),
      ],
    );
  }
}
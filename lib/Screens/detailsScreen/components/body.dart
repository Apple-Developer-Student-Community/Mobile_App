import 'package:apple_student_community/Screens/detailsScreen/components/tech_members_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../HomeScreen/components/section_heading.dart';
import 'design_members_card.dart';
import 'founders_info.dart';
import 'header_section.dart';
import 'org_head.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSection(),
          SizedBox(height: 10.0),
          Row(children: [const SectionHeading(title: 'Speaker\'s Thought')]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Now that you are here, let me take a moment to tell you that this community is all about excellence. Each of its member is heavily talented and has the hunger to strive and thrive. If you want to stand out, this is the community to be in.\n It is all about IOS Development and more than MacOS. ",
              style: GoogleFonts.laila(fontSize: 12, color: Colors.white70),
            ),
          ),
          SizedBox(height: 10.0),
          const SectionHeading(title: 'Founders'),
          FoundersInfo(),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Students who face problems regarding any installation processes, those who do not know how to navigate around the MacOS, the hidden features of the MacOS, and much more would be a part of this community. This is the community where we learn and grow hand in hand. This community is all about helping as communities should be. but theres more to it. We also aim to teach students ios development through a series of classes and workshops, we will introduce the “in conversation with apple” where we will bring in the industry experts who are associated with apple and interview them on various questions raised by you guys.",
              style: GoogleFonts.laila(fontSize: 12, color: Colors.white70),
            ),
          ),
          SizedBox(height: 20),
          DesignMembersCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Greetings to You, I am the chief of UI/UX designs in this community. The logo of any organization, be it a multi-billion dollar company, a university, or a community needs to be easily understandable. The logo should clearly indicate to the public the motive behind which the organization works. It should be able to deliver the message which needs to be shared with the audience on a small or a large scale. Keeping that in mind I had to create a logo befitting our motive yet keeping it simple and elegant like that of Apple. So ladies and gentlemen, this logo here is of Centre of Excellence Society which supervises the OS development of both Android and IOS. Under this society, we have the Apple Developers’ Students’ Community which solely focuses on the IOS development.",
              style: GoogleFonts.laila(fontSize: 12, color: Colors.white70),
            ),
          ),
          SizedBox(height: 20),
          TechMembersCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Now what about windows users who want to improve their skill spectrum? Do not worry, we will not be restricting this community to the mac users. We will let those students use the Apple lab in the Newton block, so no interested and deserving student gets left out.",
              style: GoogleFonts.laila(fontSize: 12, color: Colors.white70),
            ),
          ),
          SizedBox(height: 20),
          OrganisingHead(size: size),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

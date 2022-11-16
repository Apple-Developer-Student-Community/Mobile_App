import 'package:apple_student_community/Screens/detailsScreen/components/social_media_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../util/constants.dart';

class MemberContainer extends StatelessWidget {
  const MemberContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.desc, required this.instaAccount, required this.linkedinAccount,
  }) : super(key: key);

  final Image image;
  final String title;
  final String desc;
  final Uri instaAccount;
  final Uri linkedinAccount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: image,
            ),
            // Title
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.laila(
                          fontSize: 12.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4.0),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                  ),
                ],
              ),
            ),

            // Date
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialMediaIcon(
                    icon: FontAwesomeIcons.instagram, url: instaAccount,
                  ),
                  SocialMediaIcon(
                    icon: FontAwesomeIcons.linkedinIn, url: linkedinAccount,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:apple_student_community/Screens/detailsScreen/components/social_media_icon.dart';
import 'package:apple_student_community/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganisingHead extends StatelessWidget {
  const OrganisingHead({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: kMemberCard,
      ),
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is Siddharth!",
                      style: GoogleFonts.laila(fontSize: 18),
                    ),
                    Text(
                      "Chief Org & Dev Relation",
                      style: GoogleFonts.laila(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialMediaIcon(
                          icon: FontAwesomeIcons.linkedinIn,
                          url: Uri.parse('https://www.linkedin.com/in/siddharth-garg-4b6912227/'),
                        ),
                        SizedBox(width: 10),
                        SocialMediaIcon(
                          icon: FontAwesomeIcons.instagram,
                          url: Uri.parse('https://www.instagram.com/siddh_61103/'),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/siddharth.png',
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/sidd.png',
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 25.0),
                    child: Text(
                      "Hi Students!\nA lot of time people think being in Organising Team means",
                      style: GoogleFonts.laila(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              " just organising Events but in this community Organising team members will also learn how Human Resources Works!"
              "\n\nThank You So much For Hearing Us!",
              style: GoogleFonts.laila(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

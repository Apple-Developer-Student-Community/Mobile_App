import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'social_media_icon.dart';

class DescContainer extends StatelessWidget {
  const DescContainer({
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
        color: Colors.white10.withOpacity(0.1).withBlue(255),
      ),
      width: size.width,
      height: 150,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi! \nI'm Sikand Dhingra",
                  style: GoogleFonts.laila(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Chief Content Officer\n & Founding Member",
                  style: GoogleFonts.laila(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SocialMediaIcon(
                        color: Colors.black,
                        icon: FontAwesomeIcons.instagram,
                        url: Uri.parse('https://www.instagram.com/_sknd.19__/'),
                      ),
                      SizedBox(width: 5.0),
                      SocialMediaIcon(
                        color: Colors.black,
                        icon: FontAwesomeIcons.linkedinIn,
                        url: Uri.parse('https://www.linkedin.com/in/sikand-dhingra-9089a01b0/'),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  BadgeCard(
                    title: '2nd Year CSE',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BadgeCard extends StatelessWidget {
  const BadgeCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 50.0,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          title,
          style: GoogleFonts.laila(fontSize: 10),
        ),
      ),
    );
  }
}

import 'package:apple_student_community/util/constants.dart';
import 'package:flutter/material.dart';
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
                Text(""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

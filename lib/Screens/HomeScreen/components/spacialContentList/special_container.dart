import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../util/constants.dart';

class SpecialContainer extends StatelessWidget {
  const SpecialContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);
  final Image image;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 4.0),
        child: Container(
          width: size.width,
          height: 150,
          decoration: BoxDecoration(
              gradient: kSpacialCard,
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), child: image),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.laila(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subTitle,
                        style: GoogleFonts.laila(),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        "Read More...",
                        style: GoogleFonts.laila(
                            color: Colors.orange,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text(
        "This Is The Finest Community In Your Surrounding!",
        style:
        GoogleFonts.laila(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}


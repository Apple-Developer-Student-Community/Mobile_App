import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    Key? key, required this.icon, required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 50.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.orange,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    Key? key, required this.icon, required this.url, this.color = Colors.black54,
  }) : super(key: key);
  final IconData icon;
  final Uri url;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Link(
      target: LinkTarget.defaultTarget,
      uri: url,
      builder:(context, followLink) => GestureDetector(
        onTap: followLink,
        child: Material(
          elevation: 50.0,
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12.0)),
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
      ),
    );
  }
}

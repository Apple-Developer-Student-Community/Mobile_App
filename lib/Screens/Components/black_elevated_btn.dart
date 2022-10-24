import 'package:flutter/material.dart';

class BlackElevatedBtn extends StatelessWidget {
  const BlackElevatedBtn({
    Key? key,
    required this.onTap, required this.icon, required this.iconColor,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 50.0,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12.0)),
        child: GestureDetector(
          onTap: onTap,
          child: Icon(
            icon,
            size: 20,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}

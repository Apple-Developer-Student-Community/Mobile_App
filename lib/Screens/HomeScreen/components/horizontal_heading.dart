import 'package:flutter/material.dart';

class HorizontalHeading extends StatelessWidget {
  const HorizontalHeading({
    Key? key,
    required this.text,
    required this.isSelected, required this.onTap,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected ? Colors.orange : Colors.grey.shade600,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

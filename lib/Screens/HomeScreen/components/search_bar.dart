import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.fmd_good,
            color: Colors.orange,
          ),
          hintText: "Find Your Interest...",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown.shade600),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown.shade600),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearNavbar();
      // NavigationBar(destinations: []);
  }
}

class LinearNavbar extends StatelessWidget {
  const LinearNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10.0 * 2,
        right: 10.0 * 2,
        bottom: 10,
      ),
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.black38,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white24,
              // size: 18,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/feeds');
            },
            icon: const Icon(
              Icons.dynamic_feed_outlined,
              color: Colors.white,
              // size: 28,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/notification');
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}

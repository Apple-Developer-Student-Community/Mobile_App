import 'package:flutter/material.dart';

import 'event_tile.dart';

class EventsList extends StatelessWidget {
  const EventsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          EventsTile(
            image: Image.asset('assets/images/applelogo.webp'),
            title: 'Bienvenue Apple',
            desc: 'Inaugural Event, It Was a great fun.',
            date: "30th Sep'22",
          ),
          EventsTile(
              image: Image.asset('assets/images/apple.webp'),
              title: 'WorkShop',
              desc: 'To make everyone familiar with terminal!',
              date: "19th Oct'22"),
          EventsTile(
              image: Image.asset('assets/images/apple1.jpg'),
              title: 'Registration',
              desc: 'To make everyone familiar with terminal!',
              date: "20th Oct'22"),
        ],
      ),
    );
  }
}

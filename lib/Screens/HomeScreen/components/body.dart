import 'package:apple_student_community/Screens/HomeScreen/components/search_bar.dart';
import 'package:apple_student_community/Screens/HomeScreen/components/section_heading.dart';
import 'package:apple_student_community/Screens/HomeScreen/components/spacialContentList/special_container.dart';
import 'package:flutter/material.dart';

import 'eventsList/events_list.dart';
import 'headline.dart';
import 'horizontal_heading.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List events = [
    ['All Events', true],
    ['Upcoming Events', false],
    ['Ongoing Events', false],
  ];

  void eventSelected(int index) {
    setState(() {
      for (int i = 0; i < events.length; i++) {
        events[i][1] = false;
      }
      events[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // This is the Finest Community in your surrounding!
          const HeadlineText(),
          const SizedBox(height: 20.0),

          // search bar
          const SearchBar(),
          const SizedBox(height: 20.0),

          // events heading
          SizedBox(
            height: 30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return HorizontalHeading(
                      text: events[index][0],
                      isSelected: events[index][1],
                      onTap: () {
                        eventSelected(index);
                      });
                }),
          ),

          // Horizontal listview for the Events
          const EventsList(),
          SizedBox(height: 20.0),
          // spacial for you
          const SectionHeading(title: 'Spacial For You'),

          // list of special content
          Column(
            children: [
              SpecialContainer(
                onTap: () {
                  Navigator.pushNamed(context, '/error');
                },
                image: Image.asset(
                  'assets/icons/communityLogo.png',
                  width: 120,
                ),
                title: 'Apple Developer Student Community!',
                subTitle: 'About Community!',
              ),
              SpecialContainer(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/teamDetails');
                },
                image: Image.asset(
                  'assets/images/sikand.png',
                  width: 120,
                ),
                title: 'Founding Members & There Stories!',
                subTitle: 'About Us!',
              ),
            ],
          )
        ],
      ),
    );
  }
}

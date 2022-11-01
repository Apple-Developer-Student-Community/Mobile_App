import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    Key? key,
    required this.profileName,
    required this.likes,
    required this.postTime,
    required this.imgURL,
    required this.bio,
  }) : super(key: key);

  final String imgURL;
  final String profileName;
  final String likes;
  final String postTime;
  final String bio;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CircleAvatar(child: Icon(Icons.person)),
                  ),
                  SizedBox(
                    width: 10.0
                  ),
                  Text(profileName),SizedBox(
                    width: 10.0
                  ),

                  Icon(CupertinoIcons.checkmark_seal_fill, size: 18, color: Colors.blueAccent,)
                ],
              ),
            ),
            Image.asset(imgURL),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        size: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 15.0),
                      Icon(
                        FontAwesomeIcons.comment,
                        size: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 15.0),
                      Icon(
                        Icons.send_outlined,
                        size: 22,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text("Liked by"),
                      Text("Anonymous",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(" and "),
                      Text("$likes ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('others'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        ("$profileName "),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(bio)
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'View all comments',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '$postTime ago',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

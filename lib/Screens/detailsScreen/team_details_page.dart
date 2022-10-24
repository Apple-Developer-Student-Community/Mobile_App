import 'package:flutter/material.dart';
import 'components/body.dart';

class TeamDetailsPage extends StatefulWidget {
  const TeamDetailsPage({Key? key}) : super(key: key);

  @override
  State<TeamDetailsPage> createState() => _TeamDetailsPageState();
}

class _TeamDetailsPageState extends State<TeamDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black45,
      body: Body(),
    );
  }
}

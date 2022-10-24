import 'package:flutter/material.dart';

import '../../Components/black_elevated_btn.dart';
import 'desc_container.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  Color color = Colors.grey;
  void likeFunc(){
    setState(() {
      color == Colors.grey? color = Colors.red: color = Colors.grey;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*3/4,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.asset(
              'assets/images/sikandPotrait.JPG',
              fit: BoxFit.fill,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: size.height*3/4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BlackElevatedBtn(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/');
                            },
                            icon: Icons.arrow_back_ios_new_outlined,
                            iconColor: Colors.grey,
                          ),
                          BlackElevatedBtn(
                            onTap: () {
                              likeFunc();
                            },
                            icon: Icons.favorite,
                            iconColor: color,
                          ),
                        ],
                      ),
                    ),
                    DescContainer(size: size)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


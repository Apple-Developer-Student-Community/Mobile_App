import 'package:apple_student_community/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: new Image.asset(
                'assets/images/space-black-apple-watch-over-black-iphone-x.jpg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Text("Welcome to APPLE STUDENT COMMUNITY!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.laila(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            signInWithGoogle(context);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 40.0,
                              backgroundColor: Colors.transparent,
                              textStyle: const TextStyle(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                "assets/icons/GoogleLogo.png",
                                scale: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text("CONTINUE WITH GOOGLE",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.laila(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              // fontSize: 20,
                            )),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

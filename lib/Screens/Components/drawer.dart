import 'package:apple_student_community/authentication.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "", email = "";

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = currentUser;
    if (user != null) {
      name = user.displayName!;
      email = user.email;
    }
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(email),
            currentAccountPicture: GoogleUserCircleAvatar(identity: user!),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("Example.abc@gmail.com"),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text("Attendance Manager"),
            subtitle: Text("Manage Attendance"),
          ),
          const ListTile(
            leading: Icon(Icons.send),
            title: Text("Share"),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title:
                GestureDetector(onTap: signOut, child: const Text("Sign out")),
          ),
        ],
      ),
    );
  }
}

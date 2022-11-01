import 'package:flutter/material.dart';
import 'package:google_sign_in/widgets.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer(
      {Key? key,
        required this.name,
        required this.email,
        required this.press,
        required this.profilePicture})
      : super(key: key);

  final String name, email;
  final VoidCallback press;
  final GoogleUserCircleAvatar profilePicture;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(email),
            currentAccountPicture: profilePicture,
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
            title: GestureDetector(onTap: press, child: const Text("Sign out")),
          ),
        ],
      ),
    );
  }
}

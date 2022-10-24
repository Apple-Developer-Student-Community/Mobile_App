import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {


  const MyDrawer(
      {Key? key,
      required this.name,
      required this.email,
      required this.press, this.profilePicture})
      : super(key: key);

  final String name, email;
  final VoidCallback press;
  final profilePicture;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(email),
            currentAccountPicture: const Text(""),
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
            title: Text("Blog"),
            subtitle: Text("Check Blogs"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/cam_page');
            },
            child: const ListTile(
              leading: Icon(Icons.camera_alt_outlined),
              title: Text("Scan"),
              subtitle: Text("Tap to Know More"),
            ),
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

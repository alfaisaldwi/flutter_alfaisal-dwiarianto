import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerTele extends StatefulWidget {
  const DrawerTele({Key? key}) : super(key: key);

  @override
  State<DrawerTele> createState() => _DrawerTeleState();
}

class _DrawerTeleState extends State<DrawerTele> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Alfaisal Dwiarianto'),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/image/img.jpg')),
            accountEmail: Text('alfaisaldwi@gmail.com'),
          ),
          DrawerListTile(
            iconData: Icons.people,
            title: "New Group",
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Chat",
          ),
          DrawerListTile(
            iconData: Icons.campaign,
            title: "New Channel",
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "Contacts",
          ),
          DrawerListTile(
            iconData: Icons.person_add_sharp,
            title: "Invite Friends",
          ),
          DrawerListTile(
            iconData: Icons.settings,
            title: "Setting",
          ),
          DrawerListTile(
            iconData: Icons.question_mark_rounded,
            title: "Telegram FAQ",
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile(
      {Key? key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

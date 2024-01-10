import 'package:chat_app/component/user_avatar.dart';
import 'package:flutter/material.dart';

import 'drawer_items.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(40),
        ),
      ),
      width: 275,
      backgroundColor: Colors.black26,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        decoration: const BoxDecoration(
          color: Color(0xF71F1E1E),
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x3D000000),
              spreadRadius: 30,
              blurRadius: 20,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const SizedBox(width: 56),
                    const Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  children: <Widget>[
                    UserAvatar(imageName: 'img6.jpg'),
                    SizedBox(width: 12),
                    Text(
                      'Mahmoud',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const DrawerItems(title: 'Account', icon: Icons.key_rounded),
                const DrawerItems(
                    title: 'Chats', icon: Icons.chat_bubble_rounded),
                const DrawerItems(
                    title: 'Notifications',
                    icon: Icons.notifications_active_rounded),
                const DrawerItems(
                    title: 'Data and Storage', icon: Icons.storage_rounded),
                const DrawerItems(title: 'Help', icon: Icons.help),
                const Divider(
                  thickness: 2,
                  height: 30,
                  color: Colors.green,
                ),
                const DrawerItems(
                    title: 'Invite a friend', icon: Icons.people_alt_outlined),
              ],
            ),
            const DrawerItems(title: 'Log Out', icon: Icons.logout_rounded),
          ],
        ),
      ),
    );
  }
}

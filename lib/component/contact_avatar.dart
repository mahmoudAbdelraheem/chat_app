import 'package:flutter/material.dart';

import 'user_avatar.dart';

class ContactAvatar extends StatelessWidget {
  final String imageName;
  final String userName;
  const ContactAvatar({
    super.key,
    required this.imageName,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: <Widget>[
          UserAvatar(imageName: imageName),
          const SizedBox(height: 5),
          Text(
            userName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

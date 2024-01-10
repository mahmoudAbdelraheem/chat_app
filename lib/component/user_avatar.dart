import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String imageName;
  const UserAvatar({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image(
          image: AssetImage("images/$imageName"),
          fit: BoxFit.cover,
        ).image,
      ),
    );
  }
}

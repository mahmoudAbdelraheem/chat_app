import 'package:flutter/material.dart';

import 'user_avatar.dart';

class ConversionRow extends StatelessWidget {
  final String imageName;
  final String userName;
  final String message;
  final String time;
  final int notification;

  const ConversionRow({
    super.key,
    required this.imageName,
    required this.userName,
    required this.message,
    required this.time,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                UserAvatar(imageName: imageName),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      message,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: <Widget>[
                  Text(
                    time,
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 15),
                  if (notification > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF25c1a9),
                      child: Text(
                        "$notification",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          indent: 70,
        ),
      ],
    );
  }
}

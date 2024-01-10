import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItems({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(icon),
            ),
            const SizedBox(width: 40),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

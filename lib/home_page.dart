import 'package:flutter/material.dart';

import 'component/contact_avatar.dart';
import 'component/conversion_row.dart';
import 'component/my_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              // section 01 menu and search icons
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(Icons.menu)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                  ],
                ),
              ),
              // section 02
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 15),
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Messages",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 40),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Online",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Groups",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "More",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 210,
              decoration: const BoxDecoration(
                color: Color(0xFF25c1a9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Favorite Contacts',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: const <Widget>[
                        ContactAvatar(imageName: 'img1.jpg', userName: 'Alla'),
                        ContactAvatar(imageName: 'img2.jpg', userName: 'July'),
                        ContactAvatar(imageName: 'img3.jpg', userName: 'Ahmed'),
                        ContactAvatar(imageName: 'img4.jpg', userName: 'Nor'),
                        ContactAvatar(imageName: 'img5.jpg', userName: 'Memo'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 25),
                children: const <Widget>[
                  ConversionRow(
                    imageName: 'img1.jpg',
                    userName: 'Alla',
                    time: '14:23',
                    message: 'How Are you Today?',
                    notification: 1,
                  ),
                  ConversionRow(
                    imageName: 'img2.jpg',
                    userName: 'July',
                    time: '4:01',
                    message: 'Will you come Today?',
                    notification: 0,
                  ),
                  ConversionRow(
                    imageName: 'img3.jpg',
                    userName: 'Ahmed',
                    time: '18:53',
                    message: 'I Need To Buy a New phone...',
                    notification: 0,
                  ),
                  ConversionRow(
                    imageName: 'img4.jpg',
                    userName: 'Nor',
                    time: '1:21',
                    message: 'How Are you',
                    notification: 2,
                  ),
                  ConversionRow(
                    imageName: 'img5.jpg',
                    userName: 'Memo',
                    time: '5:03',
                    message: 'came now to the match',
                    notification: 3,
                  ),
                  ConversionRow(
                    imageName: 'img1.jpg',
                    userName: 'Alla',
                    time: '14:23',
                    message: 'How Are you Today?',
                    notification: 1,
                  ),
                  ConversionRow(
                    imageName: 'img2.jpg',
                    userName: 'July',
                    time: '4:01',
                    message: 'Will you come Today?',
                    notification: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF25c1a9),
          onPressed: () {},
          child: const Icon(Icons.edit_outlined),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

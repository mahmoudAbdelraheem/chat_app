import 'package:flutter/material.dart';

import 'home_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI Chat APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
          useMaterial3: false,
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),
      home: HomePage(),
    );
  }
}

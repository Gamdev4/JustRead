import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:justread/nav_bar.dart';
import 'package:justread/core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JustRead",
      home: const NavBar(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}

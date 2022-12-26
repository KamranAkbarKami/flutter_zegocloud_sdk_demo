import 'package:flutter/material.dart';
import 'package:flutter_zegocloud_demo/screens/homepage/homepage_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyZegoCloudApp());
}

class MyZegoCloudApp extends StatelessWidget {
  const MyZegoCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zego Cloud Audio and Video Calling',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePageScreen(),
    );
  }
}

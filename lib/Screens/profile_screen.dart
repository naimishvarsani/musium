// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Helper/utility.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Profile",
              style: TextStyle(fontSize: 30, fontFamily: AppFont.bold)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        backgroundColor: AppColor.bgcolor,
        body: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("Profile",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: AppFont.bold,
                          color: AppColor.whitecolor)))
            ],
          ),
        ));
  }
}

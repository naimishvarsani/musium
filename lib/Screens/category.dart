// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Helper/utility.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("All Music",
              style: TextStyle(fontSize: 30, fontFamily: AppFont.bold)),
        ),
        backgroundColor: AppColor.bgcolor,
        body: Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.all(10),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return MusicListBox();
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: AppColor.boxcolor,
                  );
                },
                itemCount: 15)));
  }

  Widget MusicListBox() {
    return Container(
      height: 70,
      width: Get.width,
      padding: EdgeInsets.only(left: 15, right: 25),
      decoration: BoxDecoration(
          color: AppColor.boxcolor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.whitecolor),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Song Name",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: AppFont.bold,
                      color: AppColor.whitecolor)),
              SizedBox(height: 2),
              Text("Artist Name",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: AppFont.bold,
                      color: AppColor.boxcolor)),
            ],
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline,
            size: 30,
            color: AppColor.whitecolor,
          )
        ],
      ),
    );
  }
}

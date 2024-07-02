// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Helper/utility.dart';

class CommonWidget {
  Widget textfieldBox({textcontroller, labletext}) {
    return Container(
      width: Get.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: AppColor.boxcolor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        controller: textcontroller,
        style:
            TextStyle(color: AppColor.whitecolor, fontFamily: AppFont.medium),
        decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.center,
          labelStyle:
              TextStyle(color: AppColor.whitecolor, fontFamily: AppFont.medium),
          floatingLabelStyle:
              TextStyle(color: AppColor.whitecolor, fontFamily: AppFont.medium),
          labelText: labletext,
        ),
      ),
    );
  }

  Widget appButton({btnheight, btnwidth, btnText, font, btnsize, ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: btnheight,
        width: btnwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.primaryColor),
        child: Center(
            child: Text(
          btnText,
          style: TextStyle(
              color: AppColor.whitecolor, fontFamily: font, fontSize: btnsize),
        )),
      ),
    );
  }
}

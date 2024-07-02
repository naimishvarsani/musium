// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Helper/bottomnavbar.dart';
import 'package:music_app/Helper/common_widget.dart';
import 'package:music_app/Helper/utility.dart';
import 'package:music_app/Screens/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(top: Get.height * 0.1),
        child: Column(
          children: [
            Container(
              height: Get.height * 0.25,
              width: Get.width * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImage.imges + "logo.png"),
                      fit: BoxFit.contain)),
            ),
            CommonWidget().textfieldBox(labletext: "Enter Email"),
            SizedBox(height: 20),
            CommonWidget().textfieldBox(labletext: "Enter Password"),
            SizedBox(height: 20),
            CommonWidget().textfieldBox(labletext: "Confirm Password"),
            Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(LoginScreen());
              },
              child: RichText(
                text: TextSpan(
                  text: 'Already have an Account!  ',
                  style: TextStyle(
                    color: AppColor.boxcolor,
                    fontFamily: AppFont.regular,
                  ),
                  children: [
                    TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                            fontFamily: AppFont.bold,
                            color: AppColor.primaryColor)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25, top: 15),
              child: CommonWidget().appButton(
                  ontap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return PersistenBottomNavBar();
                      },
                    ));
                  },
                  btnheight: 50.0,
                  btnwidth: Get.width * 0.4,
                  btnsize: 15.0,
                  font: AppFont.semibold,
                  btnText: "Sign UP"),
            ),
          ],
        ),
      ),
    );
  }
}

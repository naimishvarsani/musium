// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Helper/common_widget.dart';
import 'package:music_app/Helper/preferances.dart';
import 'package:music_app/Helper/utility.dart';
import 'package:music_app/Screens/Auth/social_login.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.imges + "intro.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: Get.height * 0.45,
              width: Get.width,
              decoration: BoxDecoration(
                  color: AppColor.blackcolor.withOpacity(0.9),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonWidget().centuryText(
                      text:
                          "From the latest to the greatest hits, play your favorite tracks on musium now!",
                      textColor: AppColor.whitecolor,
                      textWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                      textSize: 25.0),
                  GestureDetector(
                    onTap: () {
                      Preference.preference.saveBool(
                          PrefernceKey.isIntroductionScreenLoaded, true);
                      Get.off(() => SocialLoginScreen());
                    },
                    child: Container(
                      height: 60,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: CommonWidget().centuryText(
                            text: "Get Started",
                            textColor: AppColor.whitecolor,
                            textSize: 18.0,
                            textWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

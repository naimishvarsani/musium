// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_interpolation_to_compose_strings, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_app/Helper/preferances.dart';
import 'package:music_app/Helper/utility.dart';
import 'package:music_app/Screens/Intro_page/introduction.dart';
import 'package:music_app/Screens/sign_up.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      var isIntroduction = await Preference.preference
          .getBool(key: PrefernceKey.isIntroductionScreenLoaded, defVal: false);
      if (isIntroduction == true) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SignUpScreen()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => IntroPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: AppColor.bgcolor),
        child: Center(
            child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(AppImage.imges + 'logo.png'))),
      ),
    );
  }
}

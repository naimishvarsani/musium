// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, unused_field, prefer_final_fields, use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Controller/intro_controller.dart';

class IntroPage extends StatelessWidget {
  IntroController _introController = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

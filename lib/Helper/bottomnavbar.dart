// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, use_key_in_widget_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_app/Helper/utility.dart';
import 'package:music_app/Screens/category_view.dart';
import 'package:music_app/Screens/dashboard.dart';
import 'package:music_app/Screens/profile_view.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersistenBottomNavBar extends StatelessWidget {
  const PersistenBottomNavBar({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: DashBoard(),
          item: ItemConfig(
            icon: Icon(Icons.home_filled),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: CategoryScreen(),
          item: ItemConfig(
            icon: Icon(Icons.search),
            title: "Messages",
          ),
        ),
        PersistentTabConfig(
          screen: ProfileScreen(),
          item: ItemConfig(
            icon: Icon(Icons.settings),
            title: "Settings",
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style10BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(
            color: AppColor.blackcolor,
          ),
        ),
      );
}

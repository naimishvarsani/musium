// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:music_app/Helper/utility.dart';
import 'package:music_app/Screens/category.dart';
import 'package:music_app/Screens/dashboard.dart';
import 'package:music_app/Screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersistenBottomNavBar extends StatelessWidget {
  const PersistenBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Persistent Bottom Navigation Bar Demo",
        home: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed("/minimal"),
                  child: const Text("Show Minimal Example"),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed("/interactive"),
                  child: const Text("Show Interactive Example"),
                ),
              ],
            ),
          ),
        ),
      );
}

class MinimalExample extends StatelessWidget {
  const MinimalExample({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: DashBoard(),
          item: ItemConfig(
            icon: Icon(Icons.home),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: CategoryScreen(),
          item: ItemConfig(
            icon: Icon(Icons.message),
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
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      );
}

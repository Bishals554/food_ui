import 'package:flutter/material.dart';
import 'package:foodui/screen/favourite_page.dart';
import 'package:foodui/screen/home_page.dart';
import 'package:foodui/screen/profile_page.dart';
import 'package:foodui/screen/setting_page.dart';




class Main_page extends StatefulWidget {

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> with SingleTickerProviderStateMixin{
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          HomePage(),
          FavouritePage(),
          ProfilePage(),
          SettingPage()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(width: 1, color: Colors.grey.shade300))),
        height: 60,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(icon: Icon(Icons.favorite),
                text: 'Favourites'),
            Tab(icon: Icon(Icons.person),
                text: 'Account'),
            Tab(icon: Icon(Icons.settings),
              text: 'Settings',),
          ],

        ),
      ),
    );
  }
}

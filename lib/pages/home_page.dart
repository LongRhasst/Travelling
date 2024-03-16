import 'package:app_nckh/Controller/bottom_nav_bar_controller.dart';
import 'package:app_nckh/Query/query_page.dart';
import 'package:app_nckh/auth/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    BottomNavigatorBarController controller = Get.put(BottomNavigatorBarController());
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            backgroundColor: Colors.deepPurple,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.deepPurple.shade300,
            gap: 8,
            padding: EdgeInsets.all(15),
            onTabChange: (value){
              controller.index.value = value;
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(

                icon: Icons.favorite_border,
                text: 'Like',
              ),
              GButton(

                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Account',
              )
            ],
          ),
        ),
      ),
      body: Obx(() => controller.Pages[controller.index.value])
    );
  }
}
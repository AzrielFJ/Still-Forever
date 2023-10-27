import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:stillthesame/theme.dart';
import 'package:stillthesame/view/flower_page.dart';
import 'package:stillthesame/view/journey_page.dart';
import 'package:stillthesame/view/vn_page.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {



  final List<Widget> listWidget = [
    FlowerPage(),
    JourneyPage(),
    VnPage(),
  ];

  final List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label:  'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.featured_play_list),
      label: 'Featured',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexGlobal,
        builder: (context, val, child) {
      return Scaffold(
      extendBody: true,
      body: listWidget[selectedIndexGlobal.value],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20,right: 20,bottom: 25),
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(30.r)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.r),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            selectedItemColor: blueColor,
            currentIndex: selectedIndexGlobal.value,
            items: bottomNavBarItems,
            onTap: (selected) {
              setState(() {
                selectedIndexGlobal.value = selected;
              });
            },
          ),
        ),
      ),

    );
  });

}
}

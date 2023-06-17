import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/booking_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/profile_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/search_page.dart';

import 'home_page.dart';
class BottomNavView extends StatefulWidget {
  static const String id = "bottom_nav_view";
  const BottomNavView({Key? key}) : super(key: key);

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              HomePage(),
              SearchPage(),
              BookingPage(),
              ProfilePage(),
            ],
            onPageChanged: (int Index){
              setState(() {
                currentIndex = Index;
              });
            },
          )
        ],
      ),
      bottomNavigationBar: navBar(),
    );
  }
  Widget navBar() {
    Size Get = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          height: Get.height * 0.1,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(0);
                        currentIndex = 0;
                      });
                    },
                    icon: Icon(
                       IconlyLight.home,
                      color: currentIndex == 0 ? Colors.green : Colors.grey,
                      size: currentIndex == 0 ? 30 : 28,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(1);
                        currentIndex = 1;
                      });
                    },
                    icon: Icon(
                      currentIndex ==1? IconlyLight.search:IconlyBold.search,
                      color: currentIndex == 1 ? Colors.green : Colors.grey,
                      size: currentIndex == 1 ? 30 : 28,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(2);
                        currentIndex = 2;
                      });
                    },
                    icon: Icon(
                      IconlyLight.more_square,
                      color: currentIndex == 2 ? Colors.green : Colors.grey,
                      size: currentIndex == 2 ? 30 : 28,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(3);
                        currentIndex = 3;
                      });
                    },
                    icon: Icon(
                       IconlyLight.profile,
                      color: currentIndex == 3 ? Colors.green : Colors.grey,
                      size: currentIndex == 3 ? 30 : 28,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width:5,),
                  Text("Home",style: TextStyle(color: currentIndex==0?Colors.green:Colors.grey),),
                  Text("Search",style: TextStyle(color: currentIndex==1?Colors.green:Colors.grey),),
                  Text("Booking",style: TextStyle(color: currentIndex==2?Colors.green:Colors.grey),),
                  Text("Profile",style: TextStyle(color: currentIndex==3?Colors.green:Colors.grey),),
                  SizedBox(width: 0,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

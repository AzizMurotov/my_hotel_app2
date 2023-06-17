import 'package:flutter/material.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/booking_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/bookmark_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/bottom_nav_view.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/home_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/profile_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/search_page.dart';
import 'package:my_hotel_app2/pages/intropages/intro_pages.dart';
import 'package:my_hotel_app2/pages/splash_pages/splash_page1.dart';
import 'package:my_hotel_app2/pages/splash_pages/splash_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage1(),
      routes: {
        SplashPage2.id:(context)=> const SplashPage2(),
        SplashPage1.id:(context)=> const SplashPage1(),
        MyIntroPage.id:(context)=> const MyIntroPage(),
        BottomNavView.id:(context)=> const BottomNavView(),
        HomePage.id:(context)=> const HomePage(),
        SearchPage.id:(context)=> const SearchPage(),
        BookingPage.id:(context)=> const BookingPage(),
        ProfilePage.id:(context)=> const ProfilePage(),
      },
    );
  }
}

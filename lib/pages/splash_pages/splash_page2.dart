import 'package:flutter/material.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/bottom_nav_view.dart';
import '../bottom_nav_bar/home_page.dart';

class SplashPage2 extends StatefulWidget {
  static const String id = "splash_page2";

  const SplashPage2({Key? key}) : super(key: key);

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, BottomNavView.id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Image(
              image: AssetImage(
                "assets/images/111.png",
              ),
            ),
            const SizedBox(height: 200,),
            Center(
              child: Container(
                height: 50,
                width: 50,
                child: const CircularProgressIndicator(color: Colors.white,strokeWidth: 4,)
              )
            )
          ],
        ),
      ),
    );
  }
}

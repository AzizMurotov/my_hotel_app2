import 'package:flutter/material.dart';
import 'package:my_hotel_app2/pages/intropages/intro_pages.dart';

class SplashPage1 extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage1({Key? key}) : super(key: key);

  @override
  State<SplashPage1> createState() => _SplashPageState1();
}

class _SplashPageState1 extends State<SplashPage1>with SingleTickerProviderStateMixin {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, MyIntroPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/980201.jpg"),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Welcome to",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30,top: 30),
              child: Text(
                "Bolu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.green
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30,right: 40,bottom: 60),
              child: Text(
                "The best hotel bookings in the century to company your vacation",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_hotel_app2/pages/intropages/strings.dart';

import '../splash_pages/splash_page2.dart';

class MyIntroPage extends StatefulWidget {
  static const String id = "intro_page";

  const MyIntroPage({Key? key}) : super(key: key);

  @override
  State<MyIntroPage> createState() => _MyIntroPageState();
}

class _MyIntroPageState extends State<MyIntroPage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              introstay("assets/images/2.jpg", Strings.title1, Strings.content1),
              introstay("assets/images/1.jpg", Strings.title2, Strings.content1),
              introstay("assets/images/3.jpg", Strings.title3, Strings.content1),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndecator(currentIndex),
            ),
          ),
        ],
      ),
    );
  }

Widget introstay(String image, String title, String content){
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          ),
           Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 35,
                height: 1.5,
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 30, right: 20,top: 0),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 90,),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: TextButton(onPressed: () {
                setState(() {
                  if(currentIndex==0){
                    currentIndex=1;
                  }else if(currentIndex==1){
                    currentIndex=2;
                  }else if(currentIndex==2){
                    Navigator.pushReplacementNamed(context, SplashPage2.id);
                  }
                });
              },
                child:Text("Next",style: TextStyle(color: Colors.white,fontSize: 17),),),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: TextButton(onPressed: () {
                Navigator.pushReplacementNamed(context, SplashPage2.id);
              },
                child:Text("Skip",style: TextStyle(color: Colors.green,fontSize: 17),),),
            ),
          ),
        ],
      ),
    ),
  );
}

  Widget _indecator(bool isActivite, _color,) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActivite ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: _color ? Colors.green : Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndecator(int currentIndex) {
    List<Widget> indecators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indecators.add(
          _indecator(true, true),
        );
      } else {
        indecators.add(_indecator(false, false));
      }
    }
    return indecators;
  }
}

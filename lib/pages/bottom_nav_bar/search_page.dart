import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/home_page.dart';

class SearchPage extends StatefulWidget {
  static const String id = "search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recently Booked",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.document,
                color: Colors.green,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.category,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.count(
          childAspectRatio: 164 / 260,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            containers(Colors.red),
            containers(Colors.green),
          ],
        ),
      ),
    );
  }

  Widget containers(cc) {
    Size Get = MediaQuery.of(context).size;
    return Container(
      color: cc,
      child: Column(
        children: [

      AspectRatio(
        aspectRatio: 1/1,
            child: Container(
              margin: const EdgeInsets.only(left: 11, right: 12, top: 14),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/images.jpg"),
                ),
              ),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 32),
            child: const Text(
              "Radisson Blu Hotel",
              style: TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            "Radisson Blu Hotel",
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
          const Text(
            "Radisson Blu Hotel",
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),

        ],
      ),
    );
  }
}

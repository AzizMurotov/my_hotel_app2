import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'bottom_nav_view.dart';
class BookingPage extends StatefulWidget {
  static const String id = "booking_page";
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Bookmark",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, BottomNavView.id);
                  },
                  icon: Icon(
                    IconlyLight.home,
                    color: Colors.green,
                  ))
            ]),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  suffixIconColor: Colors.green,
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const Text(
              "Favorities:",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            containers(
              "assets/images/Без названия.jpg",
              "Bolu- Hotel",
              "430\$ evening/morning",
            ),
            containers(
              "assets/images/images.jpg",
              "Space- Hotel",
              "500\$ evening/morning",
            ),
            containers("assets/images/images1.jpg", "Star- Hotel",
                "430\$ dolar in- morning"),
            containers("assets/images/1.jpg", "Dubai Best Hotel", "1200\$ dollars"),
            containers("assets/images/images3.jpg", "Luks Hotel", "520\$ evening/morining"),
            containers("assets/images/images4.jpg", "Star2 Hotel", "630\$ dollars, of hotel"),
            containers("assets/images/images (7).jpg", "Dubai Best Hotel", "1150\$ dollars"),
            containers("assets/images/images2.jpg", "Star2 Hotel","500\$ evening/morning" )
          ],
        ),
      ),
    );
  }

  Widget containers(String image, String title, String content) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      margin: EdgeInsets.only(top: 10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                content,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
          Column(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.heart,
                color: Colors.red,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyBold.call,
                  color: Colors.blue,
                ))
          ]),
          Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          )
        ],
      ),
    );
  }
}

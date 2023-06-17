import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/booking_page.dart';
import 'package:my_hotel_app2/pages/bottom_nav_bar/bookmark_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "assets/images/images.jpg",
    "assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/images4.jpg",
  ];
  List hotelNames = ["sdfgs", "zfgsdf", "sfgsdf", "zdfhsdghs"];
  List hotelLocations = ["sfga", "dfgsdf", "sdghsgsrt", "trygfhnd"];
  List prices = ["546", "788945", "87984", "2000"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 5),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: const Image(
                        image: AssetImage("assets/images/112.png"),
                      ),
                    ),
                    const Text(
                      "Bolu",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add_alert)),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, BookingPage.id);
                        },
                        icon: const Icon(IconlyLight.bookmark)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    "Hello, Kezia",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 35),
                  child: TextField(
                    //textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        suffixIconColor: Colors.green,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        // prefixIconColor: Colors.green,
                        suffixIcon: Icon(Icons.compare_arrows_sharp,
                            color: Colors.green)),
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: TabBar(
                    isScrollable: true,
                    tabs: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Recommended",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Popular",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Trending",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Trend",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PageView(
                  children: _makeIt(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Booked",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _hotels(image, name, location, price) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15),
      child: Container(
        width: double.infinity,
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 270,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                width: 270,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.1)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100, left: 180),
                      child: Container(
                        height: 26,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Text(
                              "5.0",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          location,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, BookingPage.id);
                          },
                          icon: const Icon(
                            IconlyLight.bookmark,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "/night",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _makeIt() {
    List<Widget> lst = [];
    for (int i = 0; i < 4; i++) {
      lst.add(
        _hotels(images[i], hotelNames[i], hotelLocations[i], prices[i]),
      );
    }
    return lst;
  }


}

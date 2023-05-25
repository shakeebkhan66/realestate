import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:realestate/screens/constants/mycolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.sort_rounded),
                CircleAvatar(
                  radius: 14.0,
                  backgroundColor: Colors.grey.shade400,
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 17.0, vertical: 30.0),
            child: SizedBox(
              height: 60,
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    suffixIcon: Icon(
                      Icons.accessibility,
                      color: Colors.grey.shade500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(color: primaryColor))),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.black87)),
                        child: Image.asset(
                          "assets/images/home.png",
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "House",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.black87)),
                        child: Image.asset(
                          "assets/images/apartment.png",
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "Apartment",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.black87)),
                        child: Image.asset(
                          "assets/images/land.png",
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "Land",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.black87)),
                        child: Image.asset(
                          "assets/images/townhouse.png",
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "TownHouse",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 21.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Featured Listings",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Colors.grey.shade700),
                ),
              ],
            ),
          )
        ],
      ),

      // TODO BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: GNav(
            gap: 8.0,
            backgroundColor: whiteColor,
            color: Colors.grey,
            activeColor: primaryColor,
            tabBackgroundColor: Colors.grey.shade300,
            padding: const EdgeInsets.all(16.0),
            onTabChange: (index) {
              print(index);
            },
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: Icons.search,
                text: "Members",
              ),
              GButton(
                icon: Icons.shop_2_outlined,
                text: "Cart",
              ),
              GButton(
                icon: Icons.notifications_none_sharp,
                text: "Notifications",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

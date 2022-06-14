import 'package:car_rental/Account/profile.dart';
import 'package:car_rental/Home/homescreen.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/Dashboard/notification.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<types> typesList = [types('assets/images/filter.png', 'title')];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List dashboardlist = [
    HomeScreen(),
    Text("data1"),
    Text("data2"),
    Text("data3"),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: neumorphicColor,
          leading: InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/menu.png'))),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/notification.png'))),
              ),
            )
          ],
        ),
        body: dashboardlist[_selectedIndex],
        bottomNavigationBar: Container(
          height: 75,
          child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  backgroundColor: neumorphicColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.place_outlined),
                  label: 'Places',
                  backgroundColor: neumorphicColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_disabled_sharp),
                  label: 'Rides',
                  backgroundColor: neumorphicColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: 'Wishlist',
                  backgroundColor: neumorphicColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                  backgroundColor: neumorphicColor,
                ),
              ],
              backgroundColor: neumorphicColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: const Color(0xffDD3155),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
              unselectedItemColor: black,
              iconSize: 25,
              unselectedLabelStyle:
                  const TextStyle(color: black, fontWeight: FontWeight.w500),
              onTap: _onItemTapped,
              elevation: 5),
        ));
  }
}

class types {
  String? img;
  String? title;

  types(this.img, this.title);
}

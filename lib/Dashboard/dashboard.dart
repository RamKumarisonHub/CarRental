import 'package:car_rental/Account/profile.dart';
import 'package:car_rental/Dashboard/aboutus.dart';
import 'package:car_rental/Dashboard/documents.dart';
import 'package:car_rental/Dashboard/legal.dart';
import 'package:car_rental/Dashboard/wishlishSidebar.dart';
import 'package:car_rental/Home/homescreen.dart';
import 'package:car_rental/places/place.dart';
import 'package:car_rental/rides/rides.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/Dashboard/notification.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List dashboardlist = [
    const HomeScreen(),
    const PlaceScreen(),
    const Rides(),
    const WidhList(),
    const Profile()
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: getTtile(
              _selectedIndex == 0
                  ? 'Home'
                  : _selectedIndex == 1
                      ? "Place"
                      : _selectedIndex == 2
                          ? 'Rides'
                          : _selectedIndex == 3
                              ? 'Wishlist'
                              : 'Profile',
              16,
              FontWeight.w500,
              'Lab Grotesque'),
          backgroundColor: neumorphicColor,
          leading: InkWell(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Container(
              margin: const EdgeInsets.all(10),
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
            ),
          ],
        ),
        drawer: Drawer(
            backgroundColor: const Color(0xff000000), child: createDrawer()),
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

  Widget createDrawer() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 18.5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 65,
              height: 75,
              child: Neumorphic(
                style: NeumorphicStyle(
                    color: neumorphicColor,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                    intensity: 1,
                    depth: NeumorphicTheme.depth(context)),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/camera.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            getString('Alexis Enache', 16, FontWeight.w500),
            const SizedBox(
              height: 9,
            ),
            getString('Beginner | Bonus 35kmhv', 12, FontWeight.w500),
            const SizedBox(
              height: 35,
            ),
            drawerfieds('assets/images/Profile.png', 'Account'),
            const SizedBox(
              height: 41,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WishlistSideBar()));
                },
                child: drawerfieds('assets/images/bottom4.png', 'Wishlist')),
            const SizedBox(
              height: 41,
            ),
            drawerfieds('assets/images/account.png', 'Contact Us'),
            const SizedBox(
              height: 41,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Legal()));
                },
                child: drawerfieds('assets/images/legal.png', 'Legal')),
            const SizedBox(
              height: 41,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Documents()));
                },
                child: drawerfieds('assets/images/documents.png', 'Documents')),
            const SizedBox(
              height: 41,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                },
                child: drawerfieds('assets/images/aboutus.png', 'About Us')),
            const SizedBox(
              height: 41,
            ),
            drawerfieds('assets/images/share.png', 'Invite A Friends'),
            const SizedBox(
              height: 91.63,
            ),
            GestureDetector(
                onTap: () {
                  logoutDialogbox();
                },
                child: drawerfieds('assets/images/logout.png', 'Log Out')),
            const SizedBox(
              height: 69.21,
            )
          ],
        ),
      ),
    );
  }

  Widget drawerfieds(String img, String title) {
    return Row(
      children: [
        Image.asset(
          img,
          width: 24,
          height: 24,
          color: Color(0xffFFFFFF),
        ),
        const SizedBox(
          width: 16,
        ),
        getString(title, 16, FontWeight.w500),
      ],
    );
  }

  Widget getString(String title, double fontsize, FontWeight fontWeight) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: 'Lab Grotesque',
          fontSize: fontsize,
          fontWeight: fontWeight,
          color: Color(0xffFFFFFF)),
    );
  }

  logoutDialogbox() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            // <-- SEE HERE
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(35.0),
        )),
        context: context,
        builder: (context) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 18, bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getTtile('Log Out', 14, FontWeight.w500, 'Lab Grotesque'),
                  const SizedBox(
                    height: 23,
                  ),
                  getTtile('Are you sure you want to log out?', 14,
                      FontWeight.w400, 'Lab Grotesque'),
                  const SizedBox(
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 51.14,
                        width: 116,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              color: neumorphicColor,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(27.5)),
                              intensity: 1,
                              depth: NeumorphicTheme.depth(context)),
                          child: Align(
                              alignment: Alignment.center,
                              child: getTtile(
                                  'No', 14, FontWeight.w500, 'Lab Grotesque')),
                        ),
                      ),
                      const SizedBox(
                        width: 19,
                      ),
                      Container(
                        height: 51.14,
                        width: 116,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              color: neumorphicColor,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(27.5)),
                              intensity: 1,
                              depth: NeumorphicTheme.depth(context)),
                          child: Align(
                              alignment: Alignment.center,
                              child: getTtile(
                                  'Yes', 14, FontWeight.w500, 'Lab Grotesque')),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

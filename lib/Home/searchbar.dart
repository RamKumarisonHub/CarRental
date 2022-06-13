import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: ListView(
        children: [
heading(),
        ],
      ),
    );
  }

  Widget heading(){
    return Padding(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween
        ,
        children: [
          getTtile('Search Car', 14, FontWeight.w500),
          Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/close.png')
              )
            ),
          )
        ],
      ),
    );
  }
}

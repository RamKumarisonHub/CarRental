import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  List suggestions = ["BMW", "Aston Martin", "Ferrari"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 30),
        child: ListView(
          shrinkWrap: true,
          children: [
            heading(),
            const SizedBox(
              height: 25,
            ),
            searchBar(),
            const SizedBox(
              height: 21,
            ),
            getTtile('Suggestion', 16, FontWeight.w500, 'Lab Grotesque'),
            const SizedBox(
              height: 27,
            ),
            suggestionList(),
            const SizedBox(
              height: 23,
            ),
            recentSearch()
          ],
        ),
      ),
    );
  }

  Widget recentSearch() {
    return Container(
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            intensity: 1,
            depth: NeumorphicTheme.embossDepth(context)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 8, right: 5, bottom: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTtile('Recently search', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 28,
              ),
              recentlyResult('BMW'),
              const SizedBox(
                height: 21,
              ),
              recentlyResult('Aston Martin'),
              const SizedBox(
                height: 21,
              ),
              recentlyResult('Ferrari')
            ],
          ),
        ),
      ),
    );
  }

  recentlyResult(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Image.asset(
                'assets/images/refresh.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 9,
              ),
              getTtile(title, 12, FontWeight.w300, 'Lab Grotesque'),
            ],
          ),
        ),
        Image.asset(
          'assets/images/arrow_right.png',
          width: 18,
          height: 18,
        )
      ],
    );
  }

  Widget suggestionList() {
    return Container(
      height: 39,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 18);
          },
          itemCount: suggestions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              child: Neumorphic(
                style: NeumorphicStyle(
                    color: neumorphicColor,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    intensity: 1,
                    depth: NeumorphicTheme.embossDepth(context)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(suggestions[index].toString()),
                ),
              ),
            );
          }),
    );
  }

  Widget heading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getTtile('Search Car', 14, FontWeight.w500, 'Lab Grotesque'),
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/close.png'))),
        )
      ],
    );
  }

  Widget searchBar() {
    return Container(
      child: Neumorphic(
        margin: const EdgeInsets.only(left: 3, right: 8, top: 2, bottom: 4),
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
            intensity: 1,
            depth: NeumorphicTheme.embossDepth(context)),
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search your Car',
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: black,
                  fontFamily: 'Lab Grotesque',
                  fontSize: 12),
              suffixIcon: Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/search.png',
                  width: 20,
                  height: 20,
                ),
              )),
        ),
      ),
    );
  }
}

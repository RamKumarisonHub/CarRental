import 'package:car_rental/Signup/drivinglicence.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';

class SelectDateTime extends StatefulWidget {
  const SelectDateTime({Key? key}) : super(key: key);

  @override
  State<SelectDateTime> createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {
  final TextEditingController startController = TextEditingController();
  final TextEditingController endController = TextEditingController();
  final TextEditingController pickUpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title: getTtile(
            'Select Date & Time', 16, FontWeight.w500, 'Lab Grotesque'),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/arrow_back.png'))),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 18, right: 18),
        child: ListView(
          children: [
            selectDateTime(width),
            const SizedBox(
              height: 18,
            ),
            details(),
            const SizedBox(
              height: 18,
            ),
            createLocation(),
            const SizedBox(
              height: 28,
            ),
            continueButton(),
            const SizedBox(
              height: 34.42,
            )
          ],
        ),
      ),
    );
  }

  Widget continueButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DrivingLicence("selectdatetime", '')));
      },
      child: Container(
        height: 55,
        width: double.infinity,
        child: Neumorphic(
          style: NeumorphicStyle(
              color: neumorphicColor,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(27.5)),
              intensity: 1,
              depth: NeumorphicTheme.depth(context)),
          child: Align(
              alignment: Alignment.center,
              child:
                  getTtile('Continue', 14, FontWeight.w500, 'Lab Grotesque')),
        ),
      ),
    );
  }

  Widget selectDateTime(double width) {
    return Container(
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            lightSource: LightSource.topLeft,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            intensity: 1,
            color: neumorphicColor),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 18, left: 13, right: 12.63, bottom: 17),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getTtile(
                          'Start Date', 12, FontWeight.w500, 'Lab Grotesque'),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                          width: width / 2.5,
                          child: InkWell(
                              onTap: () {},
                              child: datetimeTextField(startController, () {
                                pickDate(context);
                              }))),
                    ],
                  ),
                  const SizedBox(
                    width: 16.65,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getTtile(
                            'End Date', 12, FontWeight.w500, 'Lab Grotesque'),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                            width: width / 2,
                            child: datetimeTextField(endController, () {})),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width / 2.5,
                    child: getTtile(
                        'Pick up Time', 12, FontWeight.w500, 'Lab Grotesque'),
                  ),
                  const SizedBox(
                    width: 16.65,
                  ),
                  Flexible(
                    child: Container(
                      width: width / 2,
                      child: datetimeTextField(pickUpController, () {}),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget details() {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          intensity: 1,
          color: neumorphicColor),
      child: Padding(
        padding: const EdgeInsets.only(top: 14, left: 12, right: 17),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          getTtile('Details', 14, FontWeight.w500, 'Lab Grotesque'),
          const SizedBox(
            height: 19,
          ),
          createDetialsData(),
        ]),
      ),
    );
  }

  Widget createDetialsData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTtile('Selected Date', 12, FontWeight.w400, 'Lab Grotesque'),
              const SizedBox(
                height: 12,
              ),
              getTtile(
                  'Selected Pick Time', 12, FontWeight.w400, 'Lab Grotesque'),
              const SizedBox(
                height: 12,
              ),
              getTtile('Number Of Day', 12, FontWeight.w400, 'Lab Grotesque'),
              const SizedBox(
                height: 12,
              ),
              getTtile('Total Cost', 12, FontWeight.w400, 'Lab Grotesque'),
            ],
          ),
        ),
        Flexible(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getTtile('2,April 2021 To 4,April 2021', 12, FontWeight.w500,
                    'Lab Grotesque'),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 12,
                ),
                getTtile('12:00 PM', 12, FontWeight.w400, 'Lab Grotesque'),
                const SizedBox(
                  height: 12,
                ),
                getTtile('2 Day', 12, FontWeight.w400, 'Lab Grotesque'),
                const SizedBox(
                  height: 12,
                ),
                createUSDUi('2400'),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget createLocation() {
    return Container(
      child: neumorphicContainer(
        Padding(
          padding:
              const EdgeInsets.only(top: 13, left: 12, right: 12, bottom: 28),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/map.png'),
              ),
              neumorphicContainer(Padding(
                padding: const EdgeInsets.only(top: 14, left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getTtile('Delivery Location', 14, FontWeight.w500,
                        'Lab Grotesque'),
                    const SizedBox(
                      height: 10,
                    ),
                    locationTextfield(),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'For pickup location the user will be charged extra amount',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lab Grotesque',
                          fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    getTtile('Complete Address', 12, FontWeight.w500,
                        'Lab Grotesque'),
                    const SizedBox(
                      height: 7,
                    ),
                    textfield(context, 'Complete Address', false),
                    const SizedBox(
                      height: 17,
                    ),
                    getTtile(
                        'How To Reach', 12, FontWeight.w500, 'Lab Grotesque'),
                    const SizedBox(
                      height: 7,
                    ),
                    textfield(context, 'Complete Address', false),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  locationTextfield() {
    return Neumorphic(
      margin: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
      style: NeumorphicStyle(
          color: neumorphicColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
          intensity: 1,
          depth: NeumorphicTheme.embossDepth(context)),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Container(
              width: 18,
              height: 18,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/tab2.png',
                height: 18,
                width: 18,
              ),
            ),
            hintText: 'Location Lorem Ipsum is Simply Abu Dhabi',
            hintStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lab Grotesque')),
      ),
    );
  }

  Container neumorphicContainer(Widget child) {
    return Container(
      width: double.infinity,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            intensity: 1,
            depth: NeumorphicTheme.depth(context)),
        child: child,
      ),
    );
  }

  Widget createUSDUi(String price) {
    return Container(
      padding: const EdgeInsets.only(left: 5, bottom: 5, top: 5),
      child: Row(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "usd",
              style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  fontFamily: 'Lab Grotesque'),
            ),
          ),
          Text(
            price,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                fontFamily: 'Lab Grotesque'),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '/d',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lab Grotesque'),
            ),
          )
        ],
      ),
    );
  }

  Widget datetimeTextField(TextEditingController controller, Function() onTap) {
    return Neumorphic(
      margin: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
      style: NeumorphicStyle(
          color: neumorphicColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
          intensity: 1,
          depth: NeumorphicTheme.embossDepth(context)),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      child: Container(
        alignment: Alignment.center,
        height: 48,
        child: TextFormField(
          onTap: onTap,
          readOnly: true,
          controller: controller,
          autofocus: false,
          cursorColor: Colors.black,
          style: const TextStyle(
              fontSize: 12, color: black, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
              prefixIcon: Container(
                width: 18,
                height: 18,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/calender.png',
                  height: 18,
                  width: 18,
                ),
              ),
              hintText: '-  -',
              border: InputBorder.none),
        ),
      ),
    );
  }

  DateTime? date;
  getText() async {
    if (date == null) {
      return "Select Date";
    } else {
      return DateFormat('MM/dd/yyyy').format(date!);
    }
  }

  pickDate(BuildContext context) async {
    final intialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: intialDate,
        firstDate: DateTime(DateTime.now().year - 15),
        lastDate: DateTime(DateTime.now().year + 5),
        builder: (BuildContext context, Widget? child) {
          return Theme(
              data: ThemeData(accentColor: Colors.black), child: child!);
        });
    if (newDate != null) {
      setState(() {
        date = newDate;
      });
      if (date != null) {
        startController.text =
            DateFormat('MM/dd/yyyy').format(date!).toString();
      }
    }
  }
}

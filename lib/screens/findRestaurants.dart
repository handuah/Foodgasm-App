import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgasm/screens/login.dart';
import 'package:hexcolor/hexcolor.dart';

class FindRestaurants extends StatefulWidget {
  // const FindRestaurants({ Key? key }) : super(key: key);

  @override
  _FindRestaurantsState createState() => _FindRestaurantsState();
}

class _FindRestaurantsState extends State<FindRestaurants> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: FaIcon(
              FontAwesomeIcons.home,
              color: HexColor('#FF4709'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Bookmark',
            icon: FaIcon(
              FontAwesomeIcons.bookmark,
              color: HexColor('#FF4709'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'plus',
            icon: FaIcon(
              FontAwesomeIcons.plusCircle,
              color: HexColor('#FF4709'),
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: FaIcon(
              FontAwesomeIcons.bell,
              color: HexColor('#FF4709'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Persons',
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: HexColor('#FF4709'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02,
        ),
        children: [],
      ),
    );
  }
}

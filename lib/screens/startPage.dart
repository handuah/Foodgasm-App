import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgasm/screens/login.dart';
import 'package:hexcolor/hexcolor.dart';

class StartPage extends StatefulWidget {
  // const StartPage({ Key? key }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/03/d9/d1/03d9d18c3531291c21d864bf8ebdd9fe.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Center(
            child: Text(
              'Foodgasm',
              style: TextStyle(
                color: HexColor('#FFFFFF'),
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

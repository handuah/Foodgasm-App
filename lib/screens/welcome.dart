import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgasm/screens/findRestaurants.dart';
import 'package:foodgasm/screens/login.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage extends StatefulWidget {
  // const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // controller: controller,
        child: Opacity(
          opacity: 1.0,
          child: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/03/d9/d1/03d9d18c3531291c21d864bf8ebdd9fe.jpg'),
                fit: BoxFit.fitHeight,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FindRestaurants(),
                            ),
                          );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.24,
                  ),
                  Container(
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.1,
                    // color: Colors.red,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          'Hi Hannah, Welcome to',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Container(
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.1,
                    // color: Colors.red,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          'Foodgasm',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: HexColor('#FDD505'),
                            fontSize: 45.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.1,
                    // color: Colors.red,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          'Please turm on your GPS to find out better restaurant suggestions near you',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: HexColor('#FFFFFF'),
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                  SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FindRestaurants(),
                          ),
                        );
                      },
                      child: Text(
                        'Turn on GPS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: HexColor('#FF4709'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

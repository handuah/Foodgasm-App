import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:foodgasm/screens/jsonData/foodCategoryData.dart';

class Categories extends StatefulWidget {
  // const Categories({ Key? key }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  //initializzing food category data
  var countryCategoryCard = FoodCategoryData.getData;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.067,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: screenWidth * 0.2,
                ),
                Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.24,
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.82,
              width: screenWidth,
              // color: Colors.red,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.01,
                ),
                separatorBuilder: (BuildContext categContext, int catIndex) =>
                    SizedBox(
                  height: screenHeight * 0.03,
                ), //add a separater to the list
                scrollDirection: Axis.vertical,
                itemCount: countryCategoryCard.length,
                itemBuilder: (BuildContext categContext, int catIndex) =>
                    countryCategory(categContext, catIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CATEGORY CARDS LIST
Widget countryCategory(BuildContext categContext, int catIndex) {
  double screenWidth = MediaQuery.of(categContext).size.width;
  double screenHeight = MediaQuery.of(categContext).size.height;
  return Material(
    borderRadius: BorderRadius.circular(10.0),
    elevation: 2.0,
    child: Stack(
      children: [
        Container(
          height: screenHeight * 0.12,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(
                'https://media.timeout.com/images/105441129/image.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: screenHeight * 0.12,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                HexColor('#DB6B7B').withOpacity(0.7),
                HexColor('#D89063').withOpacity(0.7),
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Korean',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
          ),
        ),
        Positioned(
          right: screenWidth * 0.04,
          top: screenHeight * 0.02,
          child: Container(
            height: screenHeight * 0.08,
            width: screenWidth * 0.02,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    ),
  );
}

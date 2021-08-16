import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:foodgasm/screens/jsonData/topRestaurantsData.dart';

class TopRatedRestaurants extends StatefulWidget {
  // const TopRatedRestaurants({ Key? key }) : super(key: key);

  @override
  _TopRatedRestaurantsState createState() => _TopRatedRestaurantsState();
}

class _TopRatedRestaurantsState extends State<TopRatedRestaurants> {
  // initializzing top restaurants data
  var topRestaurantsData = TopRestaurantsData.getRestaurants;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.02,
          right: screenWidth * 0.02,
          left: screenWidth * 0.02,
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.050,
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
                  width: screenWidth * 0.10,
                ),
                Text(
                  'Top Rated Restaurants',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Container(
                height: screenHeight * 0.84,
                width: screenWidth,
                // color: Colors.red,
                child: ListView.separated(
                  padding: EdgeInsets.only(
                      bottom: screenHeight * 0.02, top: screenHeight * 0.01),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: screenHeight * 0.02,
                  ), //add a separater to the list
                  scrollDirection: Axis.vertical,
                  itemCount: topRestaurantsData.length,
                  itemBuilder: (BuildContext context, int topResIndex) =>
                      topRestaurants(context, topResIndex),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // TOP RESTAURANT WIDGET
  Widget topRestaurants(BuildContext context, int topResIndex) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: screenHeight * 0.3,
        width: screenWidth,
        // color: Colors.green,
        decoration: BoxDecoration(
          // color: Colors.green,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.21,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        topRestaurantsData[topResIndex]['imagePath'],
                        // 'https://media.timeout.com/images/105441129/image.jpg',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.21,
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(5.0),
                        elevation: 4.0,
                        child: Container(
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              topRestaurantsData[topResIndex]['openState'],
                              // 'OPEN',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.5,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5.0),
                        elevation: 4.0,
                        child: Container(
                          width: screenWidth * 0.15,
                          height: screenHeight * 0.03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: screenWidth * 0.01,
                              ),
                              Text(
                                topRestaurantsData[topResIndex]['ratings'],
                                // '3.5',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: screenHeight * 0.09,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.01,
                  horizontal: screenWidth * 0.02,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          topRestaurantsData[topResIndex]['restaurantName'],
                          // 'Achimota Mall',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        Container(
                          height: screenHeight * 0.03,
                          width: screenWidth * 0.14,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              topRestaurantsData[topResIndex]['country'],
                              // 'Chinese',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: screenWidth * 0.08,
                        // ),
                        Container(
                          height: screenHeight * 0.03,
                          width: screenWidth * 0.14,
                          decoration: BoxDecoration(
                            color: HexColor('#FF4709'),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              topRestaurantsData[topResIndex]['distance'],
                              // '1.2km',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          topRestaurantsData[topResIndex]['address'],
                          // '8 Sir Charles Quist Road, Osu, Accra',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

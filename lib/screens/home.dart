import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgasm/screens/filterPage.dart';
import 'package:foodgasm/screens/jsonData/friendsData.dart';
import 'package:foodgasm/screens/jsonData/topRestaurantsData.dart';
import 'package:hexcolor/hexcolor.dart';

// import 'package:foodgasm/screens/findRestaurants.dart';
// import 'package:foodgasm/screens/login.dart';

// import 'package:foodgasm/screens/models/categoryFood.dart';
import 'package:foodgasm/screens/jsonData/foodCategoryData.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// initializzing food category data
  var foodCategoryData = FoodCategoryData.getData;

  // initializzing top restaurants data
  var topRestaurantsData = TopRestaurantsData.getRestaurants;

  // initializzing friendsImage data
  var friendsAvatarData = SuggestedFriends.getFriendsImages;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.02,
          right: screenWidth * 0.04,
          left: screenWidth * 0.04,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth * 0.7,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 0.08,
                  ),
                  hintText: 'Find Restaurant',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0.01,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.018,
                      horizontal: screenWidth * 0.02,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.search,
                      color: Colors.grey,
                      size: 18.0,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.018,
                      horizontal: screenWidth * 0.02,
                    ),
                    child: GestureDetector(
                      child: FaIcon(
                        FontAwesomeIcons.filter,
                        color: Colors.grey,
                        size: 18.0,
                      ),
                      onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterPage(),
                          ),
                        );},
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Top Rated Restaurants',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All (30)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: screenHeight * 0.01,
            // ),
            Container(
              height: screenHeight * 0.32,
              width: screenWidth,
              // color: Colors.red,
              child: ListView.separated(
                  padding: EdgeInsets.only(
                    bottom: screenHeight * 0.01,
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                        width: screenWidth * 0.04,
                      ), //add a separater to the list
                  scrollDirection: Axis.horizontal,
                  itemCount: topRestaurantsData.length,
                  itemBuilder: (BuildContext context, int topResIndex) =>
                      topRestaurants(context, topResIndex)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All (10)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: screenHeight * 0.15,
              width: screenWidth,
              child: ListView.separated(
                  separatorBuilder: (BuildContext ctx, int index) => SizedBox(
                        width: screenWidth * 0.02,
                      ), //add a separater to the list
                  scrollDirection: Axis.horizontal,
                  itemCount: foodCategoryData.length,
                  itemBuilder: (BuildContext ctx, int index) =>
                      categoryCard(ctx, index)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Friends Suggestions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All (44)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            // ),
            Container(
              height: screenHeight * 0.07,
              width: screenWidth,
              // color: Colors.green,
              child: ListView.separated(
                separatorBuilder:
                    (BuildContext friendsContext, int friendsIndex) => SizedBox(
                  width: screenWidth * 0.02,
                ), //add a separater to the list
                scrollDirection: Axis.horizontal,
                itemCount: friendsAvatarData.length,
                itemBuilder: (BuildContext friendsContext, int friendsIndex) =>
                    friendsAvatar(friendsContext, friendsIndex),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
          ],
        ),
      ),
      // ),
    );
  }

// Category Cards Widget
  Widget categoryCard(BuildContext context, int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // final categories = foodCategory[index];
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: [
          Container(
            height: screenHeight * 0.15,
            width: screenWidth * 0.3,
            decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                  foodCategoryData[index]['imagePath'],
                  // 'https://media.timeout.com/images/105441129/image.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.15,
            width: screenWidth * 0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  HexColor(
                    foodCategoryData[index]['topColor'],
                  ).withOpacity(0.7),
                  HexColor(
                    foodCategoryData[index]['bottomColor'],
                  ).withOpacity(0.7),
                ],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                foodCategoryData[index]['categoryName'],
                // 'Chinese',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
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
        width: screenWidth * 0.8,
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
                  width: screenWidth * 0.8,
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
                        width: screenWidth * 0.43,
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
                  horizontal: screenWidth * 0.04,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          width: screenWidth * 0.08,
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
                        SizedBox(
                          width: screenWidth * 0.08,
                        ),
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

  // SUGGESTED FRIENDS WIDGET
  Widget friendsAvatar(BuildContext friendContext, int friendsIndex) {
    return CircleAvatar(
      maxRadius: 30.0,
      backgroundImage: NetworkImage(
        friendsAvatarData[friendsIndex]['imageUrl'],
        // 'https://i1.sndcdn.com/artworks-CNtsO4Dkz1iV34NA-F4m70A-t500x500.jpg',
      ),
    );
  }
}


// class RatedRestaurantCard extends StatefulWidget {
//   // const RatedRestaurantCard({ Key? key }) : super(key: key);

//   @override
//   _RatedRestaurantCardState createState() => _RatedRestaurantCardState();
// }

// class _RatedRestaurantCardState extends State<RatedRestaurantCard> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Material(
//       elevation: 4.0,
//       borderRadius: BorderRadius.circular(10.0),
//       child: Container(
//         height: screenHeight * 0.3,
//         width: screenWidth * 0.8,
//         // color: Colors.green,
//         decoration: BoxDecoration(
//           // color: Colors.green,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: screenHeight * 0.21,
//                   width: screenWidth * 0.8,
//                   decoration: BoxDecoration(
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10.0),
//                       topRight: Radius.circular(10.0),
//                     ),
//                     image: DecorationImage(
//                       image: NetworkImage(
//                         'https://media.timeout.com/images/105441129/image.jpg',
//                       ),
//                       fit: BoxFit.fitWidth,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: screenHeight * 0.21,
//                   width: screenWidth * 0.8,
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.1),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10.0),
//                       topRight: Radius.circular(10.0),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: screenHeight * 0.02,
//                   left: screenWidth * 0.04,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Material(
//                         borderRadius: BorderRadius.circular(5.0),
//                         elevation: 4.0,
//                         child: Container(
//                           width: screenWidth * 0.15,
//                           height: screenHeight * 0.03,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5.0),
//                             color: Colors.white,
//                           ),
//                           child: Center(
//                             child: Text(
//                               'OPEN',
//                               style: TextStyle(
//                                   color: Colors.green,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: screenWidth * 0.43,
//                       ),
//                       Material(
//                         borderRadius: BorderRadius.circular(5.0),
//                         elevation: 4.0,
//                         child: Container(
//                           width: screenWidth * 0.15,
//                           height: screenHeight * 0.03,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5.0),
//                             color: Colors.white,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.yellow,
//                                 size: 18.0,
//                               ),
//                               SizedBox(
//                                 width: screenWidth * 0.01,
//                               ),
//                               Text(
//                                 '3.5',
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 14.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               height: screenHeight * 0.09,
//               width: screenWidth * 0.8,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10.0),
//                   bottomRight: Radius.circular(10.0),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(
//                   vertical: screenHeight * 0.01,
//                   horizontal: screenWidth * 0.04,
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Achimota Mall',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15.0,
//                           ),
//                         ),
//                         SizedBox(
//                           width: screenWidth * 0.08,
//                         ),
//                         Container(
//                           height: screenHeight * 0.03,
//                           width: screenWidth * 0.14,
//                           decoration: BoxDecoration(
//                             color: Colors.purple,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'Chinese',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: screenWidth * 0.08,
//                         ),
//                         Container(
//                           height: screenHeight * 0.03,
//                           width: screenWidth * 0.14,
//                           decoration: BoxDecoration(
//                             color: HexColor('#FF4709'),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Center(
//                             child: Text(
//                               '1.2km',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: screenHeight * 0.01,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           '8 Sir Charles Quist Road, Osu, Accra',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             color: Colors.grey.shade500,
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

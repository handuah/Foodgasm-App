import 'package:flutter/material.dart';
import 'package:foodgasm/screens/home.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterPage extends StatefulWidget {
  // const FilterPage({ Key? key }) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // final categoryNames = [
  //   "Italian",
  //   "Indian",
  //   "Korean",
  //   "Ghanaian",
  //   "Nigerian",
  //   "Lebanese"
  // ];

  // final selectedStates = [true, false, false, true, false, false];

  // bool selected = false;

  // pressedColor(bool selector) {
  //   if (selector == true) {
  //     return Colors.white;
  //   } else if (selector == false) {
  //     return Colors.grey;
  //   }
  // }

  bool select_Ind = false;
  bool select_Kor = false;
  bool select_Chin = false;
  bool select_Gha = false;
  bool select_Jap = false;
  bool select_Ita = false;
  bool select_Ger = false;
  bool select_Arab = false;
  bool select_Ame = false;

  double sliderVal = 0;

  bool star1Tap = false;
  bool star2Tap = false;
  bool star3Tap = false;
  bool star4Tap = false;
  bool star5Tap = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.08,
            width: screenWidth / 2.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: HexColor('#FF4709'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.08,
            width: screenWidth / 2.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Apply',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: HexColor('#FF4709'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.067,
              ),
              child: Row(
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
                      }),
                  SizedBox(
                    width: screenWidth * 0.3,
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.28,
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.times,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Center(
              child: Text(
                'Select Category',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Wrap(
              spacing: screenWidth * 0.03,
              runSpacing: screenHeight * 0.03,
              children: [
                CategoryBtn(select_Ind, "Indian"),
                CategoryBtn(select_Kor, "Korean"),
                CategoryBtn(select_Chin, "Chinese"),
                CategoryBtn(select_Gha, "Ghanaian"),
                CategoryBtn(select_Jap, "Japan"),
                CategoryBtn(select_Ita, "Italian"),
                CategoryBtn(select_Ger, "German"),
                CategoryBtn(select_Arab, "Arabian"),
                CategoryBtn(select_Kor, "Korean"),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Center(
              child: Text(
                'Distance',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Slider(
              value: sliderVal,
              onChanged: (double currentVal) {
                setState(() {
                  sliderVal = currentVal;
                });
              },
              label: "Distance is: ${sliderVal.round().toString()}",
              min: 0,
              max: 100,
              activeColor: Colors.orange,
              inactiveColor: Colors.grey.withOpacity(0.2),
            ),
            Center(
              child: Text(
                'Ratings',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Center(
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RatingStars(star1Tap),
                    RatingStars(star2Tap),
                    RatingStars(star3Tap),
                    RatingStars(star4Tap),
                    RatingStars(star5Tap),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget categoryButton(BuildContext context, int buttonIndex) {
  //   return TextButton(
  //     onPressed: () {},
  //     child: Text(
  //       categoryNames[buttonIndex],
  //       // 'Indian',
  //       style: TextStyle(
  //         color: Colors.black,
  //         fontWeight: FontWeight.bold,
  //         fontSize: 24.0,
  //       ),
  //     ),
  //   );
  // }
}

// CATEGORY BUTTONS
class CategoryBtn extends StatefulWidget {
  // const CategoryBtn({ Key? key }) : super(key: key);
  bool selectedName;
  final String buttonName;

  CategoryBtn(this.selectedName, this.buttonName);

  @override
  _CategoryBtnState createState() => _CategoryBtnState();
}

class _CategoryBtnState extends State<CategoryBtn> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.07,
      width: screenWidth * 0.3,
      child: TextButton(
        onPressed: () {
          setState(() {
            widget.selectedName = !widget.selectedName;
          });
        },
        child: Text(
          widget.buttonName,
          // "Indian",
          style: TextStyle(
            fontSize: 18.0,
            color: widget.selectedName ? Colors.white : Colors.grey,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: widget.selectedName ? Colors.orange : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

// RATINGS STARS
class RatingStars extends StatefulWidget {
  // const RatingStars({ Key? key }) : super(key: key);
  bool tapState = false;

  RatingStars(this.tapState);

  @override
  _RatingStarsState createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.tapState = !widget.tapState;
        });
      },
      child: Icon(
        Icons.star,
        color: widget.tapState ? HexColor('#FFCC01') : Colors.grey,
        size: 50.0,
      ),
    );
  }
}

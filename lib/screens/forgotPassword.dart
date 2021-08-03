import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotPasswordPage extends StatefulWidget {
  // const ForgotPasswordPage({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.chevronLeft,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: screenWidth * 0.3,
                      ),
                      // Center(
                      Text(
                        'Foodgasm',
                        style: TextStyle(
                          color: HexColor('#FFFFFF'),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.22,
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.1,
                    // color: Colors.red,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          'Enter your email and we will send you a reset link to reset your password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          // controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                                horizontal: screenWidth * 0.04,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.envelope,
                                size: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Prompt',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                              horizontal: screenWidth * 0.08,
                            ),
                          ),
                          style: TextStyle(
                            color: HexColor('#FFFFFF'),
                            // fontFamily: 'Prompt',
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.2,
                        ),
                        SizedBox(
                          width: screenWidth,
                          height: screenHeight * 0.08,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

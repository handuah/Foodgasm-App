import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodgasm/screens/login.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPage extends StatefulWidget {
  // const SignupPage({ Key? key }) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    height: screenHeight * 0.1,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(100.0),
                          child: CircleAvatar(
                            backgroundColor: HexColor('#54626B').withOpacity(1),
                            maxRadius: 63.0,
                            child: FaIcon(
                              FontAwesomeIcons.user,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * 0.11,
                          left: screenWidth * 0.2,
                          child: CircleAvatar(
                            maxRadius: 20.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              maxRadius: 18.0,
                              backgroundColor: HexColor('#FF4709'),
                              child: FaIcon(FontAwesomeIcons.arrowUp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          // controller: _emailController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                                horizontal: screenWidth * 0.04,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.user,
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
                            hintText: 'Name',
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
                          height: screenHeight * 0.02,
                        ),
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
                          height: screenHeight * 0.02,
                        ),
                        TextFormField(
                          // controller: _emailController,
                          obscureText: true,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                                horizontal: screenWidth * 0.04,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.lock,
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
                            hintText: 'Password',
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
                          height: screenHeight * 0.02,
                        ),
                        TextFormField(
                          // controller: _emailController,
                          keyboardType: TextInputType.text,
                          obscuringCharacter: '*',
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                                horizontal: screenWidth * 0.04,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.lock,
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
                            hintText: 'Confirmed Password',
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
                          height: screenHeight * 0.05,
                        ),
                        SizedBox(
                          width: screenWidth,
                          height: screenHeight * 0.08,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
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
                  SizedBox(
                    height: screenHeight * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: HexColor('#FF4709'),
                          ),
                        ),
                      ),
                    ],
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

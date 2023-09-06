import 'package:bank_application/pages/authentication/otp_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 315,
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Shapes.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 50, left: 50, bottom: 100, top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 59,
                      width: 60,
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      'Welcome \n Back',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 58),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 185, 185),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    TextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 185, 185),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    TextField(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 43, 71, 252),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              },
              child: Stack(
                children: [
                  Image.asset('assets/images/Sign-in.png', fit: BoxFit.fill),
                  Container(
                      height: 88,
                      width: 330,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bank_application/pages/onboarding/onboarding_screen3.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Image(
                    image: AssetImage('assets/images/Page-1.png'),
                    height: 40.07,
                    width: 40.89,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/Safety Box 1.png',
                height: 202,
                width: 280,
              ),
              SizedBox(
                height: 109,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Secure your money for \nfree and get rewards',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 39, 67, 253),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Get the most secure\n payment app and enjoy it',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 124, 42, 255),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 54,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/images/Indicators (1).png'),
                        height: 5,
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingScreen3()),
                          );
                        },
                        child: Container(
                          width: 153,
                          height: 72,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Next (1).png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

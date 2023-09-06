import 'package:bank_application/pages/home_page_screen.dart';
import 'package:flutter/material.dart';

class ProfileCompletedScreen extends StatelessWidget {
  const ProfileCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 73, 96, 249),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Center(
                child: Image.asset(
                  'assets/images/Profile Image.png',
                  height: 144.8,
                  width: 145.02,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 245),
              child: Text(
                'Username',
                style: TextStyle(
                    color: Color.fromARGB(255, 128, 224, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your username',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 128, 224, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text(
                'First Name',
                style: TextStyle(
                    color: Color.fromARGB(255, 128, 224, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your first name',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 128, 224, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text(
                'Last Name ',
                style: TextStyle(
                    color: Color.fromARGB(255, 128, 224, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your last name',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 128, 224, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 231),
              child: Text(
                'Date Of Birth',
                style: TextStyle(
                    color: Color.fromARGB(255, 128, 224, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your birthday (dd-mm-yyyy)',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 128, 224, 255),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(
              height: 110,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()),
                );
              },
              child: Stack(children: [
                Container(
                  height: 72,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Complete',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue),
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

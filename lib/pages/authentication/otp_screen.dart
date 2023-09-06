import 'package:bank_application/pages/authentication/otp_verfication_screen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset(
                    'assets/images/OTP 1.png',
                    height: 233,
                    width: 223,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('OTP Verification',
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 21,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 20,
              ),
              Text(
                  'We will send you a one time password \nto this mobile number ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 27,
              ),
              Text('Enter Mobile Number',
                  style: TextStyle(
                      color: Color.fromARGB(255, 185, 185, 185),
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: TextField(
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 110,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpVerification()),
                  );
                },
                child: Stack(
                  children: [
                    Image.asset('assets/images/Get OTP Button.png',
                        fit: BoxFit.fill),
                    Container(
                        height: 88,
                        width: 330,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'Get OTP',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
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
      ),
    );
  }
}

import 'package:bank_application/pages/authentication/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                height: 25,
              ),
              Text('Enter the OTP sent to +923041390154',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 27,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50),
              ),
              SizedBox(
                height: 24,
              ),
              RichText(
                text: TextSpan(
                    text: 'Didn\'t you receive the OTP?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 185, 185, 185),
                    ),
                    children: [
                      TextSpan(
                        text: ' Resend OTP',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 39, 67, 253),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
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
                                  'Verify',
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

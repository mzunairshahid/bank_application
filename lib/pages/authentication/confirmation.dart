import 'package:bank_application/pages/transations/card_screen.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 109,
          width: 375,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
                bottomLeft: Radius.circular(60)),
            color: Color.fromARGB(255, 73, 96, 249),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Text(
                  'Transfer',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 55,
        ),
        Icon(Icons.check_circle_rounded,
            size: 100, color: Color.fromARGB(255, 149, 235, 151)),
        RichText(
          text: TextSpan(
              text: 'You have successfully sent \n',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 39, 67, 253),
              ),
              children: [
                TextSpan(
                  text: ' ₹366.49',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 39, 67, 253),
                  ),
                ),
                TextSpan(
                  text: ' to ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 39, 67, 253),
                  ),
                ),
                TextSpan(
                  text: 'Rohit Kumar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 39, 67, 253),
                  ),
                )
              ]),
        ),
        SizedBox(
          height: 41,
        ),
        Image.asset(
          'assets/images/Profile Image (1).png',
          height: 78,
          width: 78,
        ),
        SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Stack(
            children: [
              Image.asset('assets/images/Get OTP Button.png', fit: BoxFit.fill),
              Container(
                  height: 72,
                  width: 315,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            'Execute Again',
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardScreen()),
            );
          },
          child: Container(
            height: 72,
            width: 315,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Color.fromARGB(255, 39, 67, 253))),
            child: Center(
              child: Text(
                'Confirmation',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 39, 67, 253)),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

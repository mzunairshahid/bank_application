import 'package:bank_application/pages/authentication/sign_in_screen.dart';
import 'package:bank_application/pages/authentication/sign_up.dart';
import 'package:bank_application/pages/transations/card_screen.dart';
import 'package:bank_application/pages/onboarding/onboarding_screen1.dart';
import 'package:bank_application/pages/transations/transaction_detail_screen.dart';
import 'package:bank_application/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          child: Image.asset(
            'assets/images/Profile Image (1).png',
            height: 50,
            width: 50,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigationBarScreen(),
              ),
            );
          },
          child: const ListTile(
            title: Text(
              'Bottom Navigation bar',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 43, 71, 255)),
            ),
            leading: Icon(Icons.paid, color: Color.fromARGB(255, 43, 71, 255)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 43, 71, 255),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TransactionDetail(),
              ),
            );
          },
          child: const ListTile(
            title: Text(
              'Transactions',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 43, 71, 255)),
            ),
            leading: Icon(Icons.swap_horiz_sharp,
                color: Color.fromARGB(255, 43, 71, 255)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 43, 71, 255),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardScreen(),
              ),
            );
          },
          child: const ListTile(
            title: Text(
              'My Cards',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 43, 71, 255)),
            ),
            leading: Icon(Icons.topic_sharp,
                color: Color.fromARGB(255, 43, 71, 255)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 43, 71, 255),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnBoardingScreen1(),
              ),
            );
          },
          child: const ListTile(
            title: Text(
              'Promotions',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 43, 71, 255)),
            ),
            leading:
                Icon(Icons.discount, color: Color.fromARGB(255, 43, 71, 255)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 43, 71, 255),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpScreen(),
              ),
            );
          },
          child: const ListTile(
            title: Text(
              'Go to Sign Up',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 43, 71, 255)),
            ),
            leading: Icon(Icons.currency_exchange_rounded,
                color: Color.fromARGB(255, 43, 71, 255)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 43, 71, 255),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Sign Out',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 43, 71, 255)),
                  ),
                  Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 43, 71, 255),
                  )
                ],
              ),
              height: 74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: const Color.fromARGB(255, 39, 67, 253),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

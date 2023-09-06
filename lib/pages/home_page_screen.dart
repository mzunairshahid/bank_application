import 'package:bank_application/pages/transations/card_screen.dart';
import 'package:bank_application/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTile(),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      color: Color.fromARGB(255, 73, 96, 249)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  _scaffoldKey.currentState?.openDrawer();
                                },
                              ),
                              Image.asset(
                                'assets/images/Profile Image (1).png',
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Good Morning \n Rohit,',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Container(
                    height: 340,
                    width: 315,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your total balance',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(
                                    255,
                                    58,
                                    58,
                                    58,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 08,
                              ),
                              Text(
                                '₹ 70056.69',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(
                                    255,
                                    45,
                                    153,
                                    255,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Image.asset(
                                'assets/images/Columns.png',
                                height: 166,
                                width: 251,
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardScreen()),
                );
              },
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Group 9 (1).png',
                    height: 146,
                    width: 350,
                  ),
                  const SizedBox(
                      height: 127,
                      width: 350,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                'Check your\n bank accounts',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
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

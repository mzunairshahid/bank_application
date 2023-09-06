import 'package:bank_application/pages/transations/transaction_detail_screen.dart';
import 'package:bank_application/widgets/card.listtile.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.67,
              width: MediaQuery.of(context).size.width,
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(
                  height: 278,
                  width: 375,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60)),
                    color: Color.fromARGB(255, 73, 96, 249),
                  ),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 35,
                            )),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'You can check your \n cards here',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TransactionDetail()));
                    },
                    child: Container(
                      height: 305,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 64, 211, 242),
                              Color.fromARGB(255, 43, 71, 252),
                              Color.fromARGB(255, 255, 0, 255),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '₹50000.00',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            const Text(
                              'Company',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            const Spacer(
                              flex: 5,
                            ),
                            const Text(
                              '01/2025',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '**** **** **** 2030',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                Image.asset(
                                  'assets/images/Group.png',
                                  height: 25.05,
                                  width: 38.9,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const Text(
              'Recent Transactions',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 58, 58, 58),
              ),
            ),
            const CardListTile(
              title: 'Shopping',
              subtitle: '15th Nov 2023, 5:30 PM',
              imageURL: 'assets/images/Shopping Icon.png',
              text: '-₹1050',
              colour: Color.fromARGB(255, 58, 58, 58),
            ),
            const CardListTile(
              title: 'Medicine',
              subtitle: '15th Nov 2023, 5:30 PM',
              imageURL: 'assets/images/Group 9 (2).png',
              text: '-₹834',
              colour: Color.fromARGB(255, 58, 58, 58),
            ),
            const CardListTile(
              title: 'Sports',
              subtitle: '15th Nov 2023, 5:30 PM',
              imageURL: 'assets/images/Group 10.png',
              text: '-₹382',
              colour: Color.fromARGB(255, 58, 58, 58),
            )
          ],
        ),
      ),
    );
  }
}

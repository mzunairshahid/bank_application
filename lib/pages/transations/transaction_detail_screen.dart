import 'package:bank_application/pages/transations/tranfer_screen.dart';
import 'package:bank_application/widgets/card.listtile.dart';
import 'package:bank_application/widgets/customize_divider.dart';
import 'package:bank_application/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 245,
              width: 375,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                color: Color.fromARGB(255, 73, 96, 249),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TransferScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 35,
                            )),
                        const Text(
                          'Transactions',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  Text(
                    'Your total expenses',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '₹21456.56',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 39,
                  )
                ],
              ),
            ),
            const SizedBox(height: 37),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Track your expenses',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TransactionCard(
                  title: 'Travel',
                  amount: '₹5869',
                  colour: Color.fromARGB(255, 247, 140, 140),
                  color: Color.fromARGB(255, 182, 68, 68),
                ),
                TransactionCard(
                    title: 'Shopping',
                    amount: '₹3573',
                    colour: Color.fromARGB(255, 246, 197, 127),
                    color: Color.fromARGB(255, 185, 115, 17)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TransactionCard(
                    title: 'Sports',
                    amount: '₹997',
                    colour: Color.fromARGB(255, 115, 220, 235),
                    color: Color.fromARGB(255, 25, 140, 158)),
                TransactionCard(
                    title: 'Medicine',
                    amount: '₹834',
                    colour: Color.fromARGB(255, 216, 143, 255),
                    color: Color.fromARGB(255, 105, 40, 139)),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransferScreen(),
                  ),
                );
              },
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Group 9 (1).png',
                    height: 140,
                    width: 360,
                  ),
                  Container(
                      height: 140,
                      width: 300,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Credit Card \n Repayment',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Container(
              width: 375,
              height: 541,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: Color.fromARGB(255, 73, 96, 249),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 5, 25, 158),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 223, 217, 217))),
                    ),
                  ),
                  const CardListTile(
                      title: 'Shopping',
                      subtitle: '15th Nov 2023, 5:30 PM',
                      imageURL: 'assets/images/Shopping Icon.png',
                      text: '-₹1050',
                      colour: Colors.white),
                  const CardListTile(
                      title: 'Medicine',
                      subtitle: '15th Nov 2023, 5:30 PM',
                      imageURL: 'assets/images/Group 9 (2).png',
                      text: '-₹834',
                      colour: Colors.white),
                  const CardListTile(
                      title: 'Sports',
                      subtitle: '15th Nov 2023, 5:30 PM',
                      imageURL: 'assets/images/Group 10.png',
                      text: '-₹382',
                      colour: Colors.white)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bank_application/pages/authentication/confirmation.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
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
          const SizedBox(
            height: 77,
          ),
          const Text(
            'Enter Amount',
            style: TextStyle(
                color: Color.fromARGB(255, 39, 67, 253),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 75, right: 75),
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 20, 91, 150)),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.currency_rupee,
                    color: Color.fromARGB(255, 39, 67, 253),
                  ),
                  hintText: '0',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 182, 191, 255))),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text('To',
              style: TextStyle(
                  color: Color.fromARGB(255, 39, 67, 253),
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Profile Image (1).png',
                height: 34,
                width: 34,
              ),
              const Text('Rohit Kumar',
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 18,
                      fontWeight: FontWeight.w400))
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConfirmationScreen()),
              );
            },
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 70,
                width: 89,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: const Color.fromARGB(255, 73, 96, 249)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

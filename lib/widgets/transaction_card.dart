import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final String amount;
  final Color colour;
  final Color color;

  const TransactionCard({
    super.key,
    required this.title,
    required this.amount,
    required this.colour,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: 153,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: colour,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: color,
                )),
            Text(amount,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: color,
                ))
          ],
        ),
      ),
    );
  }
}

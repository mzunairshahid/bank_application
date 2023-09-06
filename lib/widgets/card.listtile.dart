import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;
  final String text;
  final Color colour;

  const CardListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageURL,
      required this.text,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(color: colour, fontSize: 18),
        ),
        subtitle: Text(subtitle),
        leading: Image.asset(
          imageURL,
          height: 48,
          width: 48,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(color: colour, fontSize: 20),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';

class NotificationListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;
  final String text;

  const NotificationListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageURL,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 43, 71, 255)),
      ),
      leading: Image.asset(
        imageURL,
        height: 50,
        width: 50,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Color.fromARGB(255, 43, 71, 255),
      ),
    );
  }
}

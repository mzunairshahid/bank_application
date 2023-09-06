import 'package:bank_application/widgets/customize_divider.dart';
import 'package:bank_application/widgets/noification_listtile.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextField(
                  style: const TextStyle(
                    color: Color.fromARGB(255, 14, 115, 197),
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 230, 228, 228),
                      prefixIcon: const Icon(Icons.search_rounded,
                          color: Color.fromARGB(255, 14, 115, 197)),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 24, 120, 199))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'You can check your \n notifications here',
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const NotificationListTile(
                title: 'Notification Title',
                subtitle: 'Notification Subtitle',
                imageURL: 'assets/images/logo.png',
                text: '',
              ),
              const CustomDivider(),
              const NotificationListTile(
                title: 'Notification Title',
                subtitle: 'Notification Subtitle',
                imageURL: 'assets/images/logo.png',
                text: '',
              ),
              const CustomDivider(),
              const NotificationListTile(
                title: 'Notification Title',
                subtitle: 'Notification Subtitle',
                imageURL: 'assets/images/logo.png',
                text: '',
              ),
              const CustomDivider(),
              const NotificationListTile(
                title: 'Notification Title',
                subtitle: 'Notification Subtitle',
                imageURL: 'assets/images/logo.png',
                text: '',
              ),
              const CustomDivider()
            ],
          ),
        ),
      ),
    );
  }
}

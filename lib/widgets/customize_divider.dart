import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 315,
        height: 1,
        color: const Color.fromARGB(255, 233, 231, 231),
      ),
    );
  }
}

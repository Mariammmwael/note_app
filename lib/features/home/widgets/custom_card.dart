import 'package:flutter/material.dart';
import 'package:note_app/core/style_app.dart';

class CustomCard extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  const CustomCard({
    super.key,
    required this.backgroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text, style: StyleApp.maintext),
    );
  }
}

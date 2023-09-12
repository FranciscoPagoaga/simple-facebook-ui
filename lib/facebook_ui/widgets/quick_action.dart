import 'package:facebook_clone/facebook_ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class QuickAction extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color colorPrimary;
  final Color colorSecondary;
  final Color colorText;

  const QuickAction({
    super.key,
    required this.iconData,
    required this.text,
    required this.colorPrimary,
    required this.colorSecondary,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(
            right: 15,
          ),
          decoration: BoxDecoration(
            color: colorSecondary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              CircleButton(
                color: colorPrimary,
                iconData: iconData,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    color: colorText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flightify/utils/app_layout.dart';
import 'package:flightify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(12.0),
        vertical: AppLayout.getHeight(12.0),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const  Color(0XFFBFC2DF)),
          Gap(AppLayout.getWidth(10.0)),
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}

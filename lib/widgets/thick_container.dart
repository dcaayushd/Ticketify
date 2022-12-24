// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  final bool? iconColor;

  const ThickContainer({
    Key? key,
    this.isColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: isColor == iconColor ? Colors.white : const Color(0XFF8ACCF7),
        ),
      ),
    );
  }
}

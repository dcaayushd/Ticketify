// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ticketify/utils/app_layout.dart';

class AppOverlapContainerWidget extends StatelessWidget {
  final double right;
  final double top;
  final Color color;
  const AppOverlapContainerWidget({
    Key? key,
    required this.right,
    required this.top,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(30)),
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            width: 18,
            color: color,
          ),
        ),
      ),
    );
  }
}

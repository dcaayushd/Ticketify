import 'package:flightify/utils/app_layout.dart';
import 'package:flightify/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
      margin: const EdgeInsets.only(right: 17, left: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2.0,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const Gap(10.0),
          Text(
            '${hotel['place']}',
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5.0),
          Column(
            children: [
              Text(
                '${hotel['destination']}',
                style: Styles.headlineStyle3.copyWith(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${hotel['star']}',
                    style: Styles.headlineStyle3
                        .copyWith(color: Styles.greenColor),
                  ),
                  const Gap(10),
                  Icon(
                    Icons.star,
                    color: Styles.orangeColor,
                  ),
                  const Spacer(),
                  Text(
                    '${hotel['reviews']} Reviews',
                    style: Styles.headlineStyle3
                        .copyWith(color: Styles.greenColor),
                  ),
                ],
              ),
            ],
          ),
          const Gap(8.0),
          Text(
            'NPR ${hotel['price']}/Night',
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
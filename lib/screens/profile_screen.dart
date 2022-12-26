import 'package:dart_date/dart_date.dart';
import 'package:ticketify/utils/app_layout.dart';
import 'package:ticketify/utils/app_styles.dart';
import 'package:ticketify/widgets/column_layout_widget.dart';
import 'package:ticketify/widgets/layout_builder_widget.dart';
import 'package:ticketify/widgets/overlap_container_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20.0),
          vertical: AppLayout.getHeight(20.0),
        ),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86.0),
                width: AppLayout.getWidth(86.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10.0),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headlineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2.0)),
                  Text(
                    'Kathmandu',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8.0)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(100.0),
                      ),
                      color: const Color(0XFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(3.0),
                      vertical: AppLayout.getHeight(3.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3.0)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF526799),
                          ),
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You Tapped on Edit');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8.0)),
          Divider(color: Colors.grey.shade500),
          Gap(AppLayout.getHeight(8.0)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18.0),
                  ),
                  color: Styles.primaryColor,
                ),
              ),
              const AppOverlapContainerWidget(
                right: -45,
                top: -40,
                color: Color(0XFF2C46D2),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(25.0),
                  vertical: AppLayout.getHeight(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getWidth(12.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You had 176 flights this year ',
                          style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25.0)),
          Text(
            'Accumulated Miles',
            style: Styles.headlineStyle1,
          ),
          Gap(AppLayout.getHeight(20.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18.0)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Column(
              children: [
                Text(
                  '26,066',
                  style: TextStyle(
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 45.0,
                  ),
                ),
                Gap(AppLayout.getHeight(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles Accrued',
                      style: Styles.headlineStyle4.copyWith(fontSize: 16.0),
                    ),
                    Text(
                      DateTime.now().format('dd MMM yyy'),
                      style: Styles.headlineStyle4.copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4.0)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '148.10',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Yeti Airlines',
                      secondText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12.0)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '230',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Buddha Airlines',
                      secondText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12.0)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '11 280',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Nepal Airlines',
                      secondText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12.0)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '148.10',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Shree Airlines',
                      secondText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12.0)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '86.41',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Yeti Airlines',
                      secondText: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(20.0)),
          InkWell(
            onTap: () {
              print('Tapped on How to get more miles');
            },
            child: Center(
              child: Text(
                'How to get more miles',
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

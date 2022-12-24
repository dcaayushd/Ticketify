import 'package:flightify/utils/app_layout.dart';
import 'package:flightify/utils/app_styles.dart';
import 'package:flightify/widgets/double_text_widgets.dart';
import 'package:flightify/widgets/icon_text_widgets.dart';
import 'package:flightify/widgets/overlap_container_widget.dart';
import 'package:flightify/widgets/tickets_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20.0),
          vertical: AppLayout.getHeight(20.0),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40.0),
          ),
          Text(
            'What are \nyou looking for?',
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getHeight(35.0),
            ),
          ),
          Gap(
            AppLayout.getHeight(20.0),
          ),
          const AppTicketsTab(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          Gap(
            AppLayout.getHeight(25.0),
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(
            AppLayout.getHeight(20.0),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(
            AppLayout.getHeight(25.0),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(18.0),
              vertical: AppLayout.getHeight(15.0),
            ),
            decoration: BoxDecoration(
              color: const Color(0XD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0)),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeight(40.0),
          ),
          const AppDoubleTextWidget(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
          ),
          Gap(
            AppLayout.getHeight(15.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425.0),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15.0),
                  vertical: AppLayout.getHeight(15.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12.0)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(15.0),
                    ),
                    Text(
                      '20% discount on the early booking of this flight, Don\'t miss out.',
                      style: Styles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: const Color(0XFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18.0)),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15.0),
                          vertical: AppLayout.getHeight(15.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headlineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(
                              AppLayout.getHeight(10),
                            ),
                            Text(
                              'Take the survey about our services and get a discount',
                              style: Styles.headlineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const AppOverlapContainerWidget(
                        right: -45,
                        top: -40,
                        color: Color(0XFF189999),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeight(15.0),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      color: const Color(0XFFEC6545),
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18.0),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15.0),
                      vertical: AppLayout.getHeight(15.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headlineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(
                          AppLayout.getHeight(5.0),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

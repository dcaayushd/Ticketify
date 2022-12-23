import 'package:flightify/screens/ticket_view.dart';
import 'package:flightify/utils/app_info_list.dart';
import 'package:flightify/utils/app_layout.dart';
import 'package:flightify/utils/app_styles.dart';
import 'package:flightify/widgets/column_layout_widget.dart';
import 'package:flightify/widgets/layout_builder_widget.dart';
import 'package:flightify/widgets/tickets_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20.0),
              vertical: AppLayout.getHeight(20.0),
            ),
            children: [
              Gap(
                AppLayout.getHeight(40.0),
              ),
              Text(
                'Tickets',
                style: Styles.headlineStyle1.copyWith(
                  fontSize: AppLayout.getHeight(35.0),
                ),
              ),
              Gap(
                AppLayout.getHeight(20.0),
              ),
              const AppTicketsTab(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              Gap(
                AppLayout.getHeight(20.0),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15.0)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15.0),
                  vertical: AppLayout.getHeight(20.0),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Aayush DC',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5683 408248',
                          secondText: 'CitizenShip No',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20.0),
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(
                      AppLayout.getHeight(20.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '6743 8721 9048',
                          secondText: 'Number of E-Ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5Y8T3I',
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20.0),
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(
                      AppLayout.getHeight(20.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  '*** 4805',
                                  style: Styles.headlineStyle3,
                                )
                              ],
                            ),
                            Text(
                              'Payment Method',
                              style: Styles.headlineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: 'NPR. 5,500',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //  Bar Code Part
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21.0)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21.0)),
                    )),
                margin: EdgeInsets.only(
                  left: AppLayout.getWidth(15.0),
                  right: AppLayout.getWidth(15.0),
                ),
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20.0),
                  bottom: AppLayout.getHeight(20.0),
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(15),
                    ),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/aayushdc',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(
                AppLayout.getHeight(20.0),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15.0)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:ticketify/utils/app_layout.dart';
import 'package:ticketify/utils/app_styles.dart';
import 'package:ticketify/widgets/column_layout_widget.dart';
import 'package:ticketify/widgets/layout_builder_widget.dart';
import 'package:ticketify/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iconColor;
  final bool? isColor;
  const TicketView({
    super.key,
    required this.ticket,
    this.isColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height:
          AppLayout.getHeight(GetPlatform.isAndroid == true ? 167.5 : 169.0),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //  For Showing the blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0XFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21.0)),
                  topRight: Radius.circular(AppLayout.getHeight(21.0)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      Expanded(child: Container()),
                      //For circle near flight logo
                      ThickContainer(isColor: iconColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24.0),
                              child: const AppLayoutBuilderWidget(
                                sections: 6,
                                linesColor: true,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0XFF8ACCF7)),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //For circle near flight logo
                      ThickContainer(isColor: iconColor),
                      // Expanded or Spacer, anything will works here,
                      Expanded(child: Container()),
                      // const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //  For Showing the orange with lines part of the ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Styles.whiteColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Styles.bgColor : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getWidth(5.0),
                                height: AppLayout.getHeight(1.5),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Styles.bgColor : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //  Bottom part of orange card/ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Styles.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21.0 : 0.0),
                  bottomRight: Radius.circular(isColor == null ? 21.0 : 0.0),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 10.0,
                bottom: 16.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: '${ticket['number']}',
                        secondText: 'Flight No',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ticketify/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketsTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTab({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(
          AppLayout.getHeight(3.5),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50.0)),
          color: const Color(0XFFF4F6FD),

          // color: Styles.kakiColor,
        ),
        child: Row(
          children: [
            //  Airlines Tickets
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7.0),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                      AppLayout.getHeight(50.0),
                    ),
                  ),
                  color: Colors.white
                  // color: Styles.kakiColor,
                  ),
              child: Center(
                child: Text(firstTab),
              ),
            ),

            //  Hotels Tickets
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7.0),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50.0),
                  ),
                ),
                color: Colors.transparent,
                // color: Styles.kakiColor,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

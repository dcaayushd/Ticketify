import 'package:ticketify/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final double size;
  final int ratingCount;
  const RatingBar({
    super.key,
    required this.rating,
    required this.ratingCount,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> starList = [];

    int realNumber = rating.floor();
    int partNumber = ((rating - realNumber) * 10).ceil();

    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        starList.add(
          Icon(
            Icons.circle_rounded,
            color: Styles.orangeColor,
            size: size,
          ),
        );
      } else if (i == realNumber) {
        starList.add(
          SizedBox(
            height: size,
            width: size,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: Styles.orangeColor,
                  size: size,
                ),
                ClipRect(
                  clipper: _Clipper(part: partNumber),
                  child: Icon(Icons.circle_rounded,
                      color: Colors.grey, size: size),
                )
              ],
            ),
          ),
        );
      } else {
        starList.add(
          Icon(
            Icons.circle_rounded,
            color: Colors.grey,
            size: size,
          ),
        );
      }
    }
    // ratingCount != null
    // \?
    starList.add(
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          '($ratingCount)',
          style: Styles.headlineStyle3.copyWith(color: Colors.white),
        ),
      ),
    );
    // : const SizedBox();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: starList,
    );
  }
}

class _Clipper extends CustomClipper<Rect> {
  final int part;

  _Clipper({required this.part});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(
      (size.width / 10) * part,
      0.0,
      size.width,
      size.height,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}

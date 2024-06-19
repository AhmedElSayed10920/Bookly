import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton(
      {super.key,
      required this.backgroundColor,
      required this.borderRadius,
      required this.textColor,
      required this.text,
      this.fontSize});

  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Color textColor;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor)
                .copyWith(fontSize: fontSize),
          )),
    );
  }
}

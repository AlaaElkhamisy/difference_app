import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_colors.dart';

class PlayerNumberWidget extends StatelessWidget {
  const PlayerNumberWidget({
    super.key,
    required this.topPadding,
    required this.leftPadding,
    required this.width,
    required this.height,
    this.fontSize,
  });
  final double topPadding, leftPadding;
  final double? width;
  final double? height;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width ?? 49,
        height: height ?? 22,
        margin: EdgeInsets.only(left: leftPadding, top: topPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(
                colors: [AppColors.color1, AppColors.color2],
                begin: Alignment.topLeft,
                end: Alignment.topRight)),
        child: Center(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: "L.",
                style:
                    TextStyle(color: Colors.white, fontSize: fontSize ?? 14)),
            TextSpan(
                text: "4",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize ?? 14))
          ])),
        ));
  }
}

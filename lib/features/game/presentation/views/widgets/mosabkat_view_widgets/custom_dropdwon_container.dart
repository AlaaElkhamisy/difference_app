import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:playing_app/core/utilis/app_colors.dart';

class CustomDropDownContainer extends StatelessWidget {
  const CustomDropDownContainer({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });
  final double width;
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.inner,
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(4, 0),
                  color: Colors.black.withOpacity(0.07)),
            ],
            gradient: LinearGradient(colors: [
              AppColors.timeAndWrongListC1,
              AppColors.timeAndWrongListC2
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(23),
            border: GradientBoxBorder(
                width: 2,
                gradient: LinearGradient(colors: [
                  AppColors.timeAndWrongListC1,
                  AppColors.timeAndWrongListC2
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter))),
        child: child);
  }
}

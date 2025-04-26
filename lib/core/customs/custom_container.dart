import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49,
      height: 22,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(colors: [
            AppColors.commentsAndLikesC1,
            AppColors.commentsAndLikesC2,
            AppColors.commentsAndLikesC3
          ], begin: Alignment.topLeft, end: Alignment.topRight)),
      child: Image.asset(image),
    );
  }
}

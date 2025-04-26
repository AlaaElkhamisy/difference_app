import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/functions/navigation.dart';
import 'package:playing_app/core/routes/app_router.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';

class StratBtn extends StatelessWidget {
  const StratBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigation(context, AppRouter.loadingGamePage);
      },
      child: Container(
        width: 165.68,
        height: 52.44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.9),
            border: GradientBoxBorder(
                width: 2.65,
                gradient: LinearGradient(colors: [
                  AppColors.startBtnBorderC1,
                  AppColors.startBtnBorderC2
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            gradient: LinearGradient(
                colors: [AppColors.startBtnC1, AppColors.startBtnC2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Stack(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Assets.startLight),
              Image.asset(Assets.startLight),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: CustomTextWidget(
              borderColor: Colors.black,
              text: AppStrings.start,
              size: 21.28,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(Assets.startBottomFigure)),
        ]),
      ),
    );
  }
}

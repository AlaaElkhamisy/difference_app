import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:svg_flutter/svg.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.61),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 28, top: 250),
            width: 355.16,
            height: 437.37,
            decoration: BoxDecoration(
                color: AppColors.gameResultbottomcontainerC,
                borderRadius: BorderRadius.circular(30.19)),
          ),
          Container(
            margin: EdgeInsets.only(left: 28, top: 215),
            padding: EdgeInsets.only(top: 80, left: 15.85, right: 15.85),
            width: 355.16,
            height: 460.51,
            decoration: BoxDecoration(
                color: AppColors.gameResultupcontainerC,
                borderRadius: BorderRadius.circular(30.19)),
            child: child,
          ),
          Padding(
              padding: EdgeInsets.only(top: 85, left: 15),
              child: SvgPicture.asset(Assets.shain)),
          Padding(
            padding: EdgeInsets.only(top: 175, left: 50),
            child: SvgPicture.asset(Assets.board),
          ),
          Padding(
            padding: EdgeInsets.only(top: 110, left: 112),
            child: SvgPicture.asset(Assets.stars),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 195),
            child: CustomTextWidget(
              borderColor: Color(0xffB20D78),
              text: AppStrings.winner,
              borderWidth: 1.44,
              size: 27.3,
              shadow: [
                BoxShadow(
                    color: Color(0xffB20D78),
                    offset: Offset(0, 2.88),
                    blurRadius: 0,
                    spreadRadius: 0)
              ],
            ),
          )
        ],
      ),
    );
  }
}

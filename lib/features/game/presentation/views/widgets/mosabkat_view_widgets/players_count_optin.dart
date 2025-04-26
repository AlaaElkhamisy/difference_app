import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';

class PlayersCountOptionsWidget extends StatelessWidget {
  const PlayersCountOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 353,
        height: 65,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.inner,
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(-4, 0))
            ],
            gradient: LinearGradient(
              colors: [
                AppColors.teamCountC1,
                AppColors.teamCountC2,
                AppColors.teamCountC3,
                AppColors.teamCountC4,
                AppColors.teamCountC5
              ],
            ),
            borderRadius: BorderRadius.circular(23)),
        child: Row(
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 176.5),
                child: CustomTextWidget(
                  borderColor: Colors.black,
                  text: AppStrings.fourPlayers,
                  size: 20,
                  borderWidth: 0.5,
                ),
              ),
            ),
            SizedBox(
              height: 48,
              child: VerticalDivider(
                thickness: 2,
                width: 2,
                color: Color(0xffD4D3D0).withOpacity(0.51),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 176.5),
              child: CustomTextWidget(
                borderColor: Colors.black,
                text: AppStrings.twoPlayers,
                size: 20,
                borderWidth: 0.5,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 174,
          height: 64,
          decoration: BoxDecoration(
              color: Color(0xff5F5A5A9E).withOpacity(0.30),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(23),
                  bottomLeft: Radius.circular(23))),
        ),
      ),
    ]);
  }
}

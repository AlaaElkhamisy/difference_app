import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:svg_flutter/svg.dart';

class CustomRemoveAndAddBtn extends StatelessWidget {
  const CustomRemoveAndAddBtn({
    super.key,
    required this.image,
    this.onTap,
  });
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 61.2,
        height: 41.13,
        decoration: customBtnDecoration(),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 3),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: RotatedBox(
                        quarterTurns: -30,
                        child: SvgPicture.asset(
                          Assets.leftLightForBtn,
                          width: 4.48,
                          height: 5.61,
                        ),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 3, top: 3),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                    width: 4.48, height: 8.97, Assets.rightLightForBtn),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                image,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 51.87,
                  height: 11.77,
                  child: Image.asset(
                    Assets.btnBottomFigure,
                  )),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration customBtnDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(13.45),
      gradient: LinearGradient(
          colors: [AppColors.addAndRemovebtnC1, AppColors.addAndRemovebtnC2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      border: GradientBoxBorder(
          width: 2.24,
          gradient: LinearGradient(colors: [
            AppColors.addAndRemovebtnBorderC1,
            AppColors.addAndRemovebtnBorderC2
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}

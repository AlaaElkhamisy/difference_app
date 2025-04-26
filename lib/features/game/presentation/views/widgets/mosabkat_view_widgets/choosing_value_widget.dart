import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/buttons_and_value_widget.dart';

class ChoosingValueWidget extends StatelessWidget {
  const ChoosingValueWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 175.56,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: customDecortion(),
      child: Column(
        children: [
          CustomTextWidget(
              borderColor: Colors.black, text: AppStrings.chooseTheValue),
          SizedBox(height: 20),
          ButtonsAndValueContainer()
        ],
      ),
    );
  }

  BoxDecoration customDecortion() {
    return BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(4, -4)),
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 11,
              spreadRadius: 0,
              offset: Offset(0, 0))
        ],
        border: GradientBoxBorder(
            width: 2.01,
            gradient: LinearGradient(
              colors: [
                AppColors.choosingValueC1,
                AppColors.choosingValueC2,
                AppColors.choosingValueC3,
                AppColors.choosingValueC4,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
        borderRadius: BorderRadius.circular(23),
        gradient: LinearGradient(colors: [
          AppColors.choosingValueC1,
          AppColors.choosingValueC2,
          AppColors.choosingValueC3,
          AppColors.choosingValueC4,
          AppColors.choosingValueC5
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter));
  }
}

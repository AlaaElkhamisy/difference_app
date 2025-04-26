import 'package:flutter/material.dart';
import 'package:gradient_progress_indicator/widget/gradient_progress_indicator_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';

class ReconnectInternetWidget extends StatelessWidget {
  const ReconnectInternetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.80)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          GradientProgressIndicator(
            duration: 2,
            radius: 13,
            strokeWidth: 5,
            gradientStops: [0.2, 0.4, 1.6],
            gradientColors: [
              AppColors.internetCheckIndicatorC1,
              AppColors.internetCheckIndicatorC2,
              AppColors.internetCheckIndicatorC3,
            ],
            child: Text(""),
          ),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              AppStrings.returnInternetConnection,
              style: AppTextStyles.nameTextStyle.copyWith(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}

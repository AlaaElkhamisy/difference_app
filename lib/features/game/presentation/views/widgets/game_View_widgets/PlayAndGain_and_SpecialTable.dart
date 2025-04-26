import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/blocked_optin_widget.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/option_item.dart';

class PlayAndGainOptionAndSpecialTableOption extends StatelessWidget {
  const PlayAndGainOptionAndSpecialTableOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 28,
      children: [
        Stack(children: [
          OptionItem(
            borderColor: AppColors.option3BorderColor,
            colors: [
              AppColors.option3Color1,
              AppColors.option3Color2,
              AppColors.option3Color3
            ],
            image: Assets.option3,
            text: AppStrings.playAndGain,
          ),
          BlockedOptionWidget()
        ]),
        Stack(children: [
          OptionItem(
            borderColor: AppColors.option4BorderColor,
            colors: [
              AppColors.option4Color1,
              AppColors.option4Color2,
              AppColors.option4Color3
            ],
            image: Assets.option4,
            text: AppStrings.specialTable,
          ),
          BlockedOptionWidget()
        ]),
      ],
    );
  }
}

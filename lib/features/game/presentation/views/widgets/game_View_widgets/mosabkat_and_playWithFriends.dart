import 'package:flutter/material.dart';
import 'package:playing_app/core/functions/navigation.dart';
import 'package:playing_app/core/routes/app_router.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/option_item.dart';

class MosabkatOptionAndPlayWithFriends extends StatelessWidget {
  const MosabkatOptionAndPlayWithFriends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 28,
      children: [
        InkWell(
          onTap: () {
            customNavigation(context, AppRouter.mosabkatPage);
          },
          child: OptionItem(
            borderColor: AppColors.option1BorderColor,
            colors: [
              AppColors.option1Color1,
              AppColors.option1Color2,
              AppColors.option1Color3
            ],
            image: Assets.option1,
            text: AppStrings.mosabkat,
          ),
        ),
        OptionItem(
          borderColor: AppColors.option2BorderColor,
          colors: [
            AppColors.option2Color1,
            AppColors.option2Color2,
            AppColors.option2Color3
          ],
          image: Assets.option2,
          text: AppStrings.playWithFriends,
        ),
      ],
    );
  }
}

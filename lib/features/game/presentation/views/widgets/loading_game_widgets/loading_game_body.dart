import 'package:flutter/material.dart';
import 'package:gradient_progress_indicator/widget/gradient_progress_indicator_widget.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/functions/navigation.dart';
import 'package:playing_app/core/routes/app_router.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';
import 'package:playing_app/features/game/presentation/views/widgets/loading_game_widgets/gained_coins.dart';
import 'package:playing_app/features/game/presentation/views/widgets/loading_game_widgets/player.dart';

class LoadingGameViewBody extends StatefulWidget {
  const LoadingGameViewBody({
    super.key,
  });

  @override
  State<LoadingGameViewBody> createState() => _LoadingGameViewBodyState();
}

class _LoadingGameViewBodyState extends State<LoadingGameViewBody> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        customReplacementNavigation(context, AppRouter.startingGamePage);
      });
    });
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 78),
      child: Column(children: [
        CustomTextWidget(borderColor: Colors.black, text: AppStrings.mosabkat),
        GainedCoinsWidget(),
        Padding(
          padding: const EdgeInsets.only(left: 45, top: 65),
          child: Row(
            children: [Player(), Player()],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 140, top: 30),
          child: Row(
            spacing: 10,
            children: [
              GradientProgressIndicator(
                duration: 2,
                radius: 13,
                strokeWidth: 5,
                gradientStops: [0.2, 0.4, 1.6],
                gradientColors: [
                  AppColors.loadingIndicatorC1,
                  AppColors.loadingIndicatorC2,
                  AppColors.loadingIndicatorC3,
                ],
                child: Text(""),
              ),
              Text(
                'جاري بدء اللعبة',
                style: AppTextStyles.nameTextStyle.copyWith(fontSize: 14),
              )
            ],
          ),
        )
      ]),
    );
  }
}

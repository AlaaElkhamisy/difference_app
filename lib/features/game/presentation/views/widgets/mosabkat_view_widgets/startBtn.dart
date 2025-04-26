import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_nav_btn.dart';
import 'package:playing_app/core/functions/navigation.dart';
import 'package:playing_app/core/routes/app_router.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';

class StratBtn extends StatelessWidget {
  const StratBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomNavBtn(
      onTap: () {
        customReplacementNavigation(context, AppRouter.loadingGamePage);
      },
      text: AppStrings.start,
    );
  }
}

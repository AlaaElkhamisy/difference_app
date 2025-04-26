import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/core/widgets/app_background.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/options_widget.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/top_side_of_game_view.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AppBackGround(),
      Padding(
        padding: const EdgeInsets.only(top: 195, left: 91),
        child: Image.asset(Assets.darkLogo),
      ),
      TopSideOfGameView(),
      OptionsWidget()
    ]);
  }
}

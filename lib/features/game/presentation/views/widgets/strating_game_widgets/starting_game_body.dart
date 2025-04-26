import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/comments_and_likes.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/game_views_and_setting.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/player1.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/player2.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/player_order_container.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/result_of_game.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/timer_widget.dart';
import 'package:svg_flutter/svg.dart';

class StartingGameBody extends StatefulWidget {
  const StartingGameBody({
    super.key,
  });

  @override
  State<StartingGameBody> createState() => _StartingGameBodyState();
}

class _StartingGameBodyState extends State<StartingGameBody> {
  bool _showOverlay = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SafeArea(
        child: Column(
          children: [
            GameViewsAndSetting(),
            Player1(),
            TimerWidget(onEnd: () {
              setState(() {
                _showOverlay = true;
              });
            }),
            Container(
              width: 381.43,
              height: 231.15,
              child: SvgPicture.asset(
                Assets.gamePicture,
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 381.43,
              height: 231.15,
              child: SvgPicture.asset(
                Assets.gamePicture,
              ),
            ),
            player2(),
            CommentsAndLikes(),
          ],
        ),
      ),
      // if (_showOverlay)
      ResultOfGame(
        child: ResultLisView(),
      )
    ]);
  }
}

class ResultLisView extends StatelessWidget {
  const ResultLisView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return PlayerOrderContainer(
          width: index == 0 ? 308.55 : 303.69,
          height: index == 0 ? 64.67 : 59.99,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10.31);
      },
      itemCount: 3,
    );
  }
}

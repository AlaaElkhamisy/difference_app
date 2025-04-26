import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/player_data_during_game.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_number.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_picture.dart';

class Player1 extends StatelessWidget {
  const Player1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              PlayerDataDuringGame(
                crossAxisAlignment: CrossAxisAlignment.end,
                name: 'نور ماجد',
                playerId: '82156349',
              ),
              PlayerWrongCountDuringGame()
            ],
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 18),
              child: PlayerPictureWidget(
                size: 58.2,
                borderWidth: 65.19,
                borderHeight: 72.2,
                topPadding: 8.2,
                leftPadding: 3.45,
              ),
            ),
            Image.asset(Assets.giftIcon),
            PlayerNumberWidget(
              topPadding: 65,
              leftPadding: 26.5,
              width: 49,
              height: 22,
            )
          ]),
        ],
      ),
    );
  }
}

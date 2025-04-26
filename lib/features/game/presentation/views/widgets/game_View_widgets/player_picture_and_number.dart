import 'package:flutter/material.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_number.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_picture.dart';

class PlayerPictureAndNumber extends StatelessWidget {
  const PlayerPictureAndNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PlayerPictureWidget(
          size: 56.89,
          borderWidth: 64,
          borderHeight: 69.93,
          topPadding: 7,
          leftPadding: 5,
        ),
        PlayerNumberWidget(
          topPadding: 50,
          leftPadding: 7.5,
          width: 49,
          height: 22,
        )
      ],
    );
  }
}

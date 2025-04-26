import 'package:flutter/material.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/PlayAndGain_and_SpecialTable.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/mosabkat_and_playWithFriends.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 433, left: 61),
      child: Row(
        spacing: 28,
        children: [
          MosabkatOptionAndPlayWithFriends(),
          PlayAndGainOptionAndSpecialTableOption(),
        ],
      ),
    );
  }
}

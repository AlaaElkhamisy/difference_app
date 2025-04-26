import 'package:flutter/material.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/game_view_body.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameViewBody(),
    );
  }
}

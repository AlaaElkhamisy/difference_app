import 'package:flutter/material.dart';
import 'package:playing_app/core/widgets/app_background.dart';
import 'package:playing_app/features/game/presentation/views/widgets/loading_game_widgets/loading_game_body.dart';

class LoadingGameView extends StatelessWidget {
  const LoadingGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackGround(),
          LoadingGameViewBody() //
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/result_body.dart';

class ResultOfGame extends StatelessWidget {
  const ResultOfGame({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ResultBody(
      child: child,
    );
  }
}

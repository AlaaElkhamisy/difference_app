import 'package:flutter/material.dart';
import 'package:playing_app/core/widgets/app_background.dart';

class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [AppBackGround()],
    );
  }
}

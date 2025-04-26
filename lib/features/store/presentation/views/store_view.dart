import 'package:flutter/material.dart';
import 'package:playing_app/core/widgets/app_background.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackGround(),
        Center(
          child: Text('data'),
        )
      ],
    );
  }
}

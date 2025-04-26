import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';

class BlockedOptionWidget extends StatelessWidget {
  const BlockedOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 135,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.33),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Image.asset(Assets.blockIcon),
    );
  }
}

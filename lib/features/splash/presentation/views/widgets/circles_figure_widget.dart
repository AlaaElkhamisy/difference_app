import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:svg_flutter/svg.dart';

class CirclesFigureWidget extends StatelessWidget {
  const CirclesFigureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: SvgPicture.asset(Assets.smallCircleImage),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: SvgPicture.asset(Assets.bigCircleImage),
          ),
        ],
      ),
    );
  }
}

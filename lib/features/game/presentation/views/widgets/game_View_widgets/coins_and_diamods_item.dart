import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:svg_flutter/svg.dart';

class CoinsAndDiamondsCountItem extends StatelessWidget {
  const CoinsAndDiamondsCountItem({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.plusIcon),
        Container(
          alignment: FractionalOffset.center,
          width: 98,
          height: 24,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(200),
              border:
                  Border.all(color: AppColors.containerBorderColor, width: 1)),
          child: Text(
            "15.3K",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 79),
          child: child,
        )
      ],
    );
  }
}

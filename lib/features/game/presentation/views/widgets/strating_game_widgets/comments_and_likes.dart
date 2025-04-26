import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_container.dart';
import 'package:playing_app/core/utilis/assets.dart';

class CommentsAndLikes extends StatelessWidget {
  const CommentsAndLikes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 12),
      child: Row(
        spacing: 5,
        children: [
          CustomContainer(
            image: Assets.smailyIcon,
          ),
          CustomContainer(
            image: Assets.roomIcon,
          )
        ],
      ),
    );
  }
}

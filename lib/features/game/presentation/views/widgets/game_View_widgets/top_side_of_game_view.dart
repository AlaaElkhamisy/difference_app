import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/coins_and_diamonds_count.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_picture_and_number.dart';

class TopSideOfGameView extends StatelessWidget {
  const TopSideOfGameView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoinsAndDiamondsCountWidget(),
                Column(
                  children: [
                    Image.asset(Assets.setting),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 56.w),
                      child: CustomTextWidget(
                        borderColor: Colors.black,
                        text: AppStrings.setting,
                        size: 12.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    Image.asset(Assets.cardTimeImage),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 70.w),
                      child: CustomTextWidget(
                        borderColor: Colors.black,
                        text: AppStrings.cardsTime,
                        size: 10.sp,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                PlayerPictureAndNumber(),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    Image.asset(Assets.orderImage),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 46.w),
                      child: CustomTextWidget(
                          borderColor: Colors.black,
                          text: AppStrings.order,
                          size: 10.sp),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

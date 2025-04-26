import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/splash/presentation/views/widgets/circles_figure_widget.dart';
import 'package:svg_flutter/svg.dart';

class AppBackGround extends StatelessWidget {
  const AppBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [AppColors.appColor1, AppColors.appColor2, AppColors.appColor3],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          CirclesFigureWidget(),
          Image.asset(Assets.topFigureImage),
          Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(Assets.leftRectangleImage)),
          Container(
              margin: EdgeInsets.only(top: 220.r),
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(Assets.rightRectangleImage)),

          // Container(
          //     width: double.infinity,
          //     height: double.infinity,
          //     color: Colors.black.withOpacity(0.3)),
          // Center(child: Image.asset(Assets.logoImage)),
          Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(Assets.bottomFigureImage)),

          //Slidinscreen()
        ],
      ),
    );
  }
}

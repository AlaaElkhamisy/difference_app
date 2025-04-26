// import 'package:flutter/material.dart';
// import 'package:playing_app/core/utilis/app_Strings.dart';
// import 'package:playing_app/core/utilis/app_text_styles.dart';

// class SlidingText extends StatelessWidget {
//   const SlidingText({super.key, required this.slidingAnimation});
//   final Animation<Offset> slidingAnimation;
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: slidingAnimation,
//         builder: (context, _) {
//           return SlideTransition(
//             position: slidingAnimation,
//             child: Text(
//               AppStrings.appName,
//               style: AppTextStyles.mainTextStyle,
//               textAlign: TextAlign.center,
//             ),
//           );
//         });
//   }
// }

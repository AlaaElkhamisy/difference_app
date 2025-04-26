// import 'package:flutter/material.dart';
// import 'package:playing_app/core/utilis/app_Strings.dart';
// import 'package:playing_app/core/utilis/app_text_styles.dart';
// import 'package:playing_app/core/utilis/assets.dart';

// class SplashAnimation extends StatefulWidget {
//   final Duration animationDuration;

//   const SplashAnimation({
//     this.animationDuration = const Duration(seconds: 5),
//     Key? key,
//   }) : super(key: key);

//   @override
//   _SplashAnimationState createState() => _SplashAnimationState();
// }

// class _SplashAnimationState extends State<SplashAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _imageSizeAnimation;
//   late Animation<Offset> _textSlideAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: widget.animationDuration,
//     );

//     // Image size animation - from large to small
//     _imageSizeAnimation = Tween<double>(
//       begin: 1.0, // Full size
//       end: 0.5, // Half size
//     ).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
//       ),
//     );

//     // Text slide animation - comes from bottom
//     _textSlideAnimation = Tween<Offset>(
//       begin: Offset(0, 5), // Start below the screen
//       end: Offset.zero, // End at normal position
//     ).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Interval(0.3, 1.0, curve: Curves.easeOut),
//       ),
//     );

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Animated Image
//           AnimatedBuilder(
//             animation: _imageSizeAnimation,
//             builder: (context, child) {
//               return Transform.scale(
//                 scale: _imageSizeAnimation.value,
//                 child: Image.asset(
//                   Assets.logoImage,
//                   // width: 200,
//                   // height: 200,
//                 ),
//               );
//             },
//           ),
//           SizedBox(height: 30),
//           // Animated Text
//           SlideTransition(
//             position: _textSlideAnimation,
//             child: Text(AppStrings.appName, style: AppTextStyles.mainTextStyle),
//           ),
//         ],
//       ),
//     );
//   }
// }

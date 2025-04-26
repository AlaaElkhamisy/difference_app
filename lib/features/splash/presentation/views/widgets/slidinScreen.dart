// import 'package:flutter/material.dart';

// import 'package:playing_app/core/utilis/assets.dart';
// import 'package:playing_app/features/splash/presentation/views/widgets/sliding_text.dart';

// class Slidinscreen extends StatefulWidget {
//   const Slidinscreen({super.key});

//   @override
//   State<Slidinscreen> createState() => _SlidinscreenState();
// }

// class _SlidinscreenState extends State<Slidinscreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<Offset> slidingAnimation;

//   void initState() {
//     super.initState();
//     initSlidingAnimations();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//           Assets.logoImage,
//         ),
//         SlidingText(slidingAnimation: slidingAnimation)
//       ],
//     );
//   }

//   void initSlidingAnimations() {
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));
//     slidingAnimation =
//         Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
//             .animate(animationController);
//     animationController.forward();
//     // slidingAnimation.addListener(() {
//     //   setState(() {});
//     // });
//   }
// }

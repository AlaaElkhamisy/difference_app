import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/assets.dart';

import 'package:playing_app/core/widgets/app_background.dart';
import 'package:playing_app/features/splash/presentation/views/widgets/delayed_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}

class SplashBody extends StatefulWidget {
  const SplashBody({
    super.key,
  });

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  bool _showOverlay = false;

  @override
  void initState() {
    super.initState(); // Don't forget to call super.initState()

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        // Check if widget is still in the tree
        setState(() {
          _showOverlay = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackGround(),
        if (_showOverlay)
          DelayedOverlayImage(
            appName: AppStrings.appName,
            initialImagePath: Assets.logoImage,
            finalImagePath: Assets.minimizedLogoImage,
          ),
      ],
    );
  }
}

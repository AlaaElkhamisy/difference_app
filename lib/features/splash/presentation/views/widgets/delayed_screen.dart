import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playing_app/core/routes/app_router.dart';
import 'package:playing_app/core/utilis/assets.dart';

class DelayedOverlayImage extends StatefulWidget {
  final String initialImagePath;
  final String finalImagePath;
  final String appName;
  final Duration fadeInDuration;
  final Duration switchDelay;
  final Duration overlayRemoveDelay;

  const DelayedOverlayImage({
    super.key,
    required this.initialImagePath,
    required this.finalImagePath,
    required this.appName,
    this.fadeInDuration = const Duration(seconds: 2),
    this.switchDelay = const Duration(milliseconds: 800),
    this.overlayRemoveDelay = const Duration(seconds: 1),
  });

  @override
  _DelayedOverlayImageState createState() => _DelayedOverlayImageState();
}

class _DelayedOverlayImageState extends State<DelayedOverlayImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  bool _showOverlay = false;
  bool _showFinalImage = false;
  bool _removeInitialOverlay = false;
  bool _showNewOverlay = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.fadeInDuration,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Start initial animation
    _controller.forward();

    // Show overlay after delay
    Future.delayed(widget.switchDelay, () {
      if (mounted) setState(() => _showOverlay = true);
    });

    // Switch to final image after animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(widget.switchDelay, () {
          if (mounted) {
            setState(() => _showFinalImage = true);

            // Remove initial overlay after delay
            Future.delayed(widget.overlayRemoveDelay, () {
              if (mounted) {
                setState(() {
                  _removeInitialOverlay = true;
                  _showNewOverlay = true;
                  Future.delayed(Duration(seconds: 6), () {
                    GoRouter.of(context).push(AppRouter.home);
                  });
                });
              }
            });
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Initial overlay (will be removed)
        if (!_removeInitialOverlay)
          AnimatedOpacity(
            opacity: _showOverlay ? 1.0 : 0.0,
            duration: widget.switchDelay,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.33),
            ),
          ),

        // Main content column (logo + app name)
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _opacityAnimation,
              child: _showFinalImage
                  ? Image.asset(widget.finalImagePath)
                  : Image.asset(widget.initialImagePath),
            ),
            if (_showFinalImage)
              Image.asset(Assets.appNameImage)
            else if (_showNewOverlay)
              Image.asset(Assets.multiColorAppNameImage),
          ],
        ),

        // New overlay that appears above everything
        if (_showNewOverlay)
          AnimatedOpacity(
            opacity: 1.0,
            duration: widget.switchDelay,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.33),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      Assets.loadingIcon,
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

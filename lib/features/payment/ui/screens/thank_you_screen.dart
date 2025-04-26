import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/extensions.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/theming/styles.dart';
import 'package:payment/core/widgets/custom_elevation_button.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({super.key});

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  bool _isButtonPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onButtonTapDown(TapDownDetails details) {
    setState(() {
      _isButtonPressed = true;
    });
  }

  void _onButtonTapUp(TapUpDetails details) {
    setState(() {
      _isButtonPressed = false;
    });
    context.pop();
  }

  void _onButtonTapCancel() {
    setState(() {
      _isButtonPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Center(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.8, end: 1.0),
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeOutBack,
                      builder: (context, scale, child) {
                        return Transform.scale(
                          scale: scale,
                          child: child,
                        );
                      },
                      child: Image.asset(
                        'assets/images/check.png',
                        height: 150,
                      ),
                    ),
                    verticalSpacing(8),
                    Text(
                      'Thank you for your payment!',
                      style: TextStylesManager.font18BlackBold,
                    ),
                    verticalSpacing(20),
                    GestureDetector(
                      onTapDown: _onButtonTapDown,
                      onTapUp: _onButtonTapUp,
                      onTapCancel: _onButtonTapCancel,
                      child: AnimatedScale(
                        scale: _isButtonPressed ? 0.95 : 1.0,
                        duration: const Duration(milliseconds: 100),
                        child: CustomElevationButton(
                          widthOfButton: 150,
                          heightOfButton: 50,
                          onPressed: () {
                            context.pop();
                          },
                          title: 'Go Back',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

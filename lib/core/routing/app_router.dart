import 'package:flutter/material.dart';
import 'package:payment/core/routing/routes.dart';
import 'package:payment/features/payment/ui/screens/my_cart_screen.dart';
import 'package:payment/features/payment/ui/screens/payment_options_screen.dart';
import 'package:payment/features/payment/ui/screens/thank_you_screen.dart';
import 'package:payment/features/payment/ui/screens/visa_option_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.myCartScreen:
        return _createPageTransition(
          child: const MyCartScreen(),
          transitionType: PageTransitionType.fade,
        );
      case Routes.paymentOptionsScreen:
        return _createPageTransition(
          child: const PaymentOptionsScreen(),
          transitionType: PageTransitionType.slide,
        );
      case Routes.visaOptionScreen:
        return _createPageTransition(
          child: const VisaOptionScreen(),
          transitionType: PageTransitionType.scale,
        );
      case Routes.thankYouScreen:
        return _createPageTransition(
          child: const ThankYouScreen(),
          transitionType: PageTransitionType.scale,
        );

      default:
        return null;
    }
  }

  static PageRouteBuilder _createPageTransition({
    required Widget child,
    PageTransitionType transitionType = PageTransitionType.slide,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.easeInOut;

        if (transitionType == PageTransitionType.slide) {
          final slideTween =
              Tween(begin: const Offset(1.0, 0.0), end: Offset.zero).chain(
            CurveTween(curve: curve),
          );
          final slideAnimation = animation.drive(slideTween);
          return SlideTransition(position: slideAnimation, child: child);
        }

        if (transitionType == PageTransitionType.fade) {
          return FadeTransition(opacity: animation, child: child);
        }

        if (transitionType == PageTransitionType.scale) {
          return ScaleTransition(scale: animation, child: child);
        }

        return child;
      },
    );
  }
}

/// Transition Types for Reusability
enum PageTransitionType {
  slide,
  fade,
  scale,
}

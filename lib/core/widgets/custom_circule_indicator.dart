import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:payment/core/theming/colors.dart';

class CustomCirculeIndicator extends StatelessWidget {
  const CustomCirculeIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SpinKitThreeBounce(
      color: ColorsManager.primaryColor,
      size: 35,
    );
  }
}


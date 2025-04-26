import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/widgets/custom_elevation_button.dart';
import 'package:payment/core/widgets/custom_snack_bar.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';
import 'package:payment/features/payment/logic/make_payment_cubit/make_payment_cubit.dart';
import 'package:payment/features/payment/ui/screens/visa_option_screen.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({super.key});

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  String? selectedPayment;

  void navigateToScreen() {
    if (selectedPayment == null) {
      CustomSnackBar.show(context, 'Please select a payment method.',
          isError: true);
      return;
    }
    Widget? screen;
    switch (selectedPayment) {
      case "visa":
        screen = const VisaOptionScreen();
        break;
      default:
        CustomSnackBar.show(context, 'Invalid payment method selected.',
            isError: true);
        return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MakePaymentCubit, MakePaymentState>(
      listener: (context, state) {
        if (state is MakePaymentLoading) {
          CustomSnackBar.show(context, 'Loading...');
        } else if (state is MakePaymentSuccess) {
        } else if (state is MakePaymentError) {
          CustomSnackBar.show(context, state.errMessage, isError: true);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                buildPaymentOption(
                    "Paypal", "paypal", "assets/images/paypal.png"),
                verticalSpacing(8),
                buildPaymentOption("Visa", "visa", "assets/images/visa.png"),
              ],
            ),
          ),
          CustomElevationButton(
            title: 'Continue',
            onPressed: () {
              if (selectedPayment == 'visa') {
                excuteStripePayment(context);
              } else {
                navigateToScreen();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildPaymentOption(String title, String value, String imagePath) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          selectedPayment = value;
        });
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(
            color: selectedPayment == value
                ? ColorsManager.primaryColor
                : Colors.white,
          ),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.primaryColor.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: ListTile(
          leading: Image.asset(imagePath, width: 30.w, height: 30.h),
          title: Text(title),
          trailing: Radio<String>(
            activeColor: ColorsManager.primaryColor,
            value: value,
            groupValue: selectedPayment,
            onChanged: (String? newValue) {
              setState(
                () {
                  selectedPayment = newValue;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

void excuteStripePayment(BuildContext context) {
  PaymentIntentRequest paymentIntentRequest = PaymentIntentRequest(
    amount: '6879' '00',
    currency: 'USD',
    customerId: 'cus_SCFnUYF3obOQtn',
  );
  context.read<MakePaymentCubit>().makePayment(
      context: context, paymentIntentRequest: paymentIntentRequest);
}

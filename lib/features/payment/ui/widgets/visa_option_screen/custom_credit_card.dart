import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/theming/styles.dart';
import 'package:payment/core/widgets/custom_input_decoration.dart';

// ignore: must_be_immutable
class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool isCvvFocused = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CreditCardWidget(
            labelCardHolder: cardHolderName,
            cardBgColor: ColorsManager.primaryColor,
            // glassmorphismConfig: Glassmorphism.defaultConfig(),
            // glassmorphismConfig: Glassmorphism(
            //   blurX: 15.0, // زيادة التمويه لجعل التأثير أكثر وضوحًا
            //   blurY: 15.0,
            //   gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: <Color>[
            //       Colors.white, // شفافية أخف
            //       ColorsManager.primaryColor
            //     ],
            //   ),
            // ),

            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName, isHolderNameVisible: true,
            cvvCode: cvvCode,
            showBackView:
                isCvvFocused, //true when you want to show cvv(back) view
            onCreditCardWidgetChange: (CreditCardBrand
                brand) {}, // Callback for anytime credit card brand is changed
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              boxShadow: [
                BoxShadow(
                  color: ColorsManager.primaryColor.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 12.h),
              child: CreditCardForm(
                formKey: formKey,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (CreditCardModel data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                    isCvvFocused = data.isCvvFocused;
                  });
                }, // Required
                obscureCvv: true,
                obscureNumber: true,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                enableCvv: true,
                cvvValidationMessage: 'Please input a valid CVV',
                dateValidationMessage: 'Please input a valid date',
                numberValidationMessage: 'Please input a valid number',
                cardNumberValidator: (String? cardNumber) {
                  return null;
                },
                expiryDateValidator: (String? expiryDate) {
                  return null;
                },
                cvvValidator: (String? cvv) {
                  return null;
                },
                cardHolderValidator: (String? cardHolderName) {
                  return null;
                },
                isCardHolderNameUpperCase: true,
                onFormComplete: () {
                  // callback to execute at the end of filling card data
                },
                autovalidateMode: AutovalidateMode.always,
                disableCardNumberAutoFillHints: false,
                inputConfiguration: InputConfiguration(
                  cardNumberDecoration: customInputDecoration(
                    label: Text(
                      "Card Number",
                      style: TextStylesManager.font14MediumGrayRegular,
                    ),
                    hintText: 'XXXX XXXX XXXX XXXX',
                    prefixIcon: const Icon(Icons.email,
                        color: ColorsManager.primaryColor),
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  expiryDateDecoration: customInputDecoration(
                    // suffixIcon: Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Image.asset(
                    //     'assets/images/check.png',
                    //     height: 5,
                    //   ),
                    // ),
                    label: Text(
                      "Expiry Date",
                      style: TextStylesManager.font14MediumGrayRegular,
                    ),
                    hintText: 'XX/XX',
                    prefixIcon: const Icon(Icons.calendar_today,
                        color: ColorsManager.primaryColor),
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  cvvCodeDecoration: customInputDecoration(
                    label: Text(
                      "CVV",
                      style: TextStylesManager.font14MediumGrayRegular,
                    ),
                    hintText: 'XXX',
                    prefixIcon: const Icon(Icons.lock,
                        color: ColorsManager.primaryColor),
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  cardHolderDecoration: customInputDecoration(
                    label: Text(
                      "Card Holder",
                      style: TextStylesManager.font14MediumGrayRegular,
                    ),
                    hintText: 'Card Holder',
                    prefixIcon: const Icon(Icons.person,
                        color: ColorsManager.primaryColor),
                    fillColor: Colors.white.withOpacity(0.1),
                  ),
                  cardNumberTextStyle: TextStylesManager.font14BlackMedium,
                  cardHolderTextStyle: TextStylesManager.font14BlackMedium,
                  expiryDateTextStyle: TextStylesManager.font14BlackMedium,
                  cvvCodeTextStyle: TextStylesManager.font14BlackMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

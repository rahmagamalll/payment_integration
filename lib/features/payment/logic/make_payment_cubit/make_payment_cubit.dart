import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:meta/meta.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';
import 'package:payment/features/payment/data/repos/payment_services_repo.dart';

part 'make_payment_state.dart';

class MakePaymentCubit extends Cubit<MakePaymentState> {
  MakePaymentCubit(this.servicesRepo) : super(MakePaymentInitial());
  final PaymentServicesRepo servicesRepo;
  Future makePayment(
      {required BuildContext context,
      required PaymentIntentRequest paymentIntentRequest}) async {
    emit(MakePaymentLoading());
    try {
      await servicesRepo.stripePayment(context,
          paymentIntentRequest: paymentIntentRequest);

      emit(MakePaymentSuccess(message: 'Payment successful'));
    } on StripeException catch (e) {
      emit(MakePaymentError(
          errMessage: e.error.message ?? 'Oops there was an error'));
    } catch (e) {
      emit(MakePaymentError(errMessage: e.toString()));
    }
  }
}

// void excuteStripePayment(BuildContext context) {
//   PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
//     amount: '100',
//     currency: 'USD',
//     cusomerId: 'cus_SCFnUYF3obOQtn',
//   );
//   BlocProvider.of<PaymentCubit>(context)
//       .makePayment(paymentIntentInputModel: paymentIntentInputModel);
// }

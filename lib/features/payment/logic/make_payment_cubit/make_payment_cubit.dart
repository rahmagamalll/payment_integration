import 'package:bloc/bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:meta/meta.dart';
import 'package:payment/features/payment/data/models/epheneral_key_responce/epheneral_key_responce.dart';
import 'package:payment/features/payment/data/models/init_payment_model/init_payment_model.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';
import 'package:payment/features/payment/data/models/payment_intent_responce/payment_intent_responce.dart';
import 'package:payment/features/payment/data/repos/stripe_services_repo.dart';

part 'make_payment_state.dart';

class MakePaymentCubit extends Cubit<MakePaymentState> {
  MakePaymentCubit(this.servicesRepo) : super(MakePaymentInitial());
  final StripeServicesRepo servicesRepo;
  Future makePayment(
      {required PaymentIntentRequest paymentIntentRequest}) async {
    emit(MakePaymentLoading());
    try {
      PaymentIntentResponce paymentIntentModel = (await servicesRepo
          .createPaymentIntent(paymentIntentRequest)) as PaymentIntentResponce;

      EpheneralKeyResponce ephemeralKeyModel = (await servicesRepo
              .createEphemeralKey(paymentIntentRequest.customerId!))
          as EpheneralKeyResponce;

      InitPaymentModel initPaymentSheetModel = InitPaymentModel(
          clientSecret: paymentIntentModel.clientSecret!,
          customerId: paymentIntentRequest.customerId!,
          ephemeralKeySecret: ephemeralKeyModel.secret!,
          name: 'ahmed');

      await servicesRepo.initPaymentSheet(
          initPaymentModel: initPaymentSheetModel);
      await servicesRepo.displayPaymentSheet();

      emit(MakePaymentSuccess(message: 'Payment Successful'));
    } on StripeException catch (e) {
      return MakePaymentError(
          errMessage: e.error.message ?? 'Oops there was an error');
    } catch (e) {
      emit(MakePaymentError(errMessage: e.toString()));
    }
  }
}


  // void excuteStripePayment(BuildContext context) {
  //   PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
  //     amount: '100',
  //     currency: 'USD',
  //     cusomerId: 'pi_3RHAB7Rj84EIFQ7z1nhpWBVH',
  //   );
  //   BlocProvider.of<PaymentCubit>(context)
  //       .makePayment(paymentIntentInputModel: paymentIntentInputModel);
  // }
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:payment/core/networking/api_service.dart';
import 'package:payment/core/networking/dio_factory.dart';
import 'package:payment/core/networking/stripe_sevices.dart';
import 'package:payment/features/payment/data/repos/payment_services_repo.dart';
import 'package:payment/features/payment/logic/make_payment_cubit/make_payment_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  
  getIt.registerLazySingleton<StripeSevices>(() => StripeSevices(getIt()));
  getIt.registerLazySingleton<PaymentServicesRepo>(
      () => PaymentServicesRepo(getIt()));

  getIt.registerFactory<MakePaymentCubit>(() => MakePaymentCubit(getIt()));
}

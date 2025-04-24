part of 'make_payment_cubit.dart';

@immutable
sealed class MakePaymentState {}

final class MakePaymentInitial extends MakePaymentState {}

final class MakePaymentLoading extends MakePaymentState {}

final class MakePaymentSuccess extends MakePaymentState {
  final String message;

  MakePaymentSuccess({required this.message});
}

final class MakePaymentError extends MakePaymentState {
  final String errMessage;

  MakePaymentError({required this.errMessage});
}

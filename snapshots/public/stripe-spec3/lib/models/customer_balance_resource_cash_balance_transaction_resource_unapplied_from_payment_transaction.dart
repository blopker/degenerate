// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_balance_resource_cash_balance_transaction_resource_unapplied_from_payment_transaction_payment_intent.dart';import 'payment_intent.dart';/// 
@immutable final class CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction {const CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction({required this.paymentIntent});

factory CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction(
  paymentIntent: OneOf2.parse(json['payment_intent'], fromA: (v) => v as String, fromB: (v) => PaymentIntent.fromJson(v as Map<String, dynamic>),),
); }

/// The [Payment Intent](https://docs.stripe.com/api/payment_intents/object) that funds were unapplied from.
final CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransactionPaymentIntent paymentIntent;

Map<String, dynamic> toJson() { return {
  'payment_intent': paymentIntent.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_intent'); } 
CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction copyWith({CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransactionPaymentIntent? paymentIntent}) { return CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction(
  paymentIntent: paymentIntent ?? this.paymentIntent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction &&
          paymentIntent == other.paymentIntent; } 
@override int get hashCode { return paymentIntent.hashCode; } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction(paymentIntent: $paymentIntent)'; } 
 }

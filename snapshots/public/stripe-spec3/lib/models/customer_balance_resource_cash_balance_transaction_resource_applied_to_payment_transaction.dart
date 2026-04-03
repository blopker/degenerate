// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_balance_resource_cash_balance_transaction_resource_applied_to_payment_transaction_payment_intent.dart';import 'payment_intent.dart';/// 
@immutable final class CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction {const CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction({required this.paymentIntent});

factory CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction(
  paymentIntent: OneOf2.parse(json['payment_intent'], fromA: (v) => v as String, fromB: (v) => PaymentIntent.fromJson(v as Map<String, dynamic>),),
); }

/// The [Payment Intent](https://docs.stripe.com/api/payment_intents/object) that funds were applied to.
final CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent paymentIntent;

Map<String, dynamic> toJson() { return {
  'payment_intent': paymentIntent.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_intent'); } 
CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction copyWith({CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent? paymentIntent}) { return CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction(
  paymentIntent: paymentIntent ?? this.paymentIntent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction &&
          paymentIntent == other.paymentIntent; } 
@override int get hashCode { return paymentIntent.hashCode; } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction(paymentIntent: $paymentIntent)'; } 
 }

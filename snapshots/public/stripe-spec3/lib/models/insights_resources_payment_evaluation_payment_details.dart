// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'insights_resources_payment_evaluation_money_movement_details.dart';import 'insights_resources_payment_evaluation_payment_method_details.dart';import 'insights_resources_payment_evaluation_shipping.dart';/// Payment details attached to this payment evaluation.
@immutable final class InsightsResourcesPaymentEvaluationPaymentDetails {const InsightsResourcesPaymentEvaluationPaymentDetails({required this.amount, required this.currency, this.description = const Omittable.absent(), this.moneyMovementDetails = const Omittable.absent(), this.paymentMethodDetails = const Omittable.absent(), this.shippingDetails = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory InsightsResourcesPaymentEvaluationPaymentDetails.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationPaymentDetails(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  moneyMovementDetails: json.containsKey('money_movement_details') ? Omittable(json['money_movement_details'] != null ? InsightsResourcesPaymentEvaluationMoneyMovementDetails.fromJson(json['money_movement_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethodDetails: json.containsKey('payment_method_details') ? Omittable(json['payment_method_details'] != null ? InsightsResourcesPaymentEvaluationPaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippingDetails: json.containsKey('shipping_details') ? Omittable(json['shipping_details'] != null ? InsightsResourcesPaymentEvaluationShipping.fromJson(json['shipping_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

/// Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
final int amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Details about the payment's customer presence and type.
final Omittable<InsightsResourcesPaymentEvaluationMoneyMovementDetails?> moneyMovementDetails;

/// Details about the payment method used for the payment.
final Omittable<InsightsResourcesPaymentEvaluationPaymentMethodDetails?> paymentMethodDetails;

/// Shipping details for the payment evaluation.
final Omittable<InsightsResourcesPaymentEvaluationShipping?> shippingDetails;

/// Payment statement descriptor.
final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'currency': currency,
  if (description.isPresent) 'description': description.value,
  if (moneyMovementDetails.isPresent) 'money_movement_details': moneyMovementDetails.value?.toJson(),
  if (paymentMethodDetails.isPresent) 'payment_method_details': paymentMethodDetails.value?.toJson(),
  if (shippingDetails.isPresent) 'shipping_details': shippingDetails.value?.toJson(),
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String; } 
InsightsResourcesPaymentEvaluationPaymentDetails copyWith({int? amount, String? currency, Omittable<String?>? description, Omittable<InsightsResourcesPaymentEvaluationMoneyMovementDetails?>? moneyMovementDetails, Omittable<InsightsResourcesPaymentEvaluationPaymentMethodDetails?>? paymentMethodDetails, Omittable<InsightsResourcesPaymentEvaluationShipping?>? shippingDetails, Omittable<String?>? statementDescriptor, }) { return InsightsResourcesPaymentEvaluationPaymentDetails(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  description: description ?? this.description,
  moneyMovementDetails: moneyMovementDetails ?? this.moneyMovementDetails,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  shippingDetails: shippingDetails ?? this.shippingDetails,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationPaymentDetails &&
          amount == other.amount &&
          currency == other.currency &&
          description == other.description &&
          moneyMovementDetails == other.moneyMovementDetails &&
          paymentMethodDetails == other.paymentMethodDetails &&
          shippingDetails == other.shippingDetails &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(amount, currency, description, moneyMovementDetails, paymentMethodDetails, shippingDetails, statementDescriptor); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationPaymentDetails(amount: $amount, currency: $currency, description: $description, moneyMovementDetails: $moneyMovementDetails, paymentMethodDetails: $paymentMethodDetails, shippingDetails: $shippingDetails, statementDescriptor: $statementDescriptor)'; } 
 }

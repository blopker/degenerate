// GENERATED CODE - DO NOT MODIFY BY HAND

import 'insights_resources_payment_evaluation_money_movement_details.dart';import 'insights_resources_payment_evaluation_payment_method_details.dart';import 'insights_resources_payment_evaluation_shipping.dart';/// Payment details attached to this payment evaluation.
final class InsightsResourcesPaymentEvaluationPaymentDetails {const InsightsResourcesPaymentEvaluationPaymentDetails({required this.amount, required this.currency, this.description, this.moneyMovementDetails, this.paymentMethodDetails, this.shippingDetails, this.statementDescriptor, });

factory InsightsResourcesPaymentEvaluationPaymentDetails.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationPaymentDetails(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  description: json['description'] as String?,
  moneyMovementDetails: json['money_movement_details'] != null ? InsightsResourcesPaymentEvaluationMoneyMovementDetails.fromJson(json['money_movement_details'] as Map<String, dynamic>) : null,
  paymentMethodDetails: json['payment_method_details'] != null ? InsightsResourcesPaymentEvaluationPaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null,
  shippingDetails: json['shipping_details'] != null ? InsightsResourcesPaymentEvaluationShipping.fromJson(json['shipping_details'] as Map<String, dynamic>) : null,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

/// Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
final int amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// Details about the payment's customer presence and type.
final InsightsResourcesPaymentEvaluationMoneyMovementDetails? moneyMovementDetails;

/// Details about the payment method used for the payment.
final InsightsResourcesPaymentEvaluationPaymentMethodDetails? paymentMethodDetails;

/// Shipping details for the payment evaluation.
final InsightsResourcesPaymentEvaluationShipping? shippingDetails;

/// Payment statement descriptor.
final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'currency': currency,
  'description': ?description,
  if (moneyMovementDetails != null) 'money_movement_details': moneyMovementDetails?.toJson(),
  if (paymentMethodDetails != null) 'payment_method_details': paymentMethodDetails?.toJson(),
  if (shippingDetails != null) 'shipping_details': shippingDetails?.toJson(),
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String; } 
InsightsResourcesPaymentEvaluationPaymentDetails copyWith({int? amount, String? currency, String? Function()? description, InsightsResourcesPaymentEvaluationMoneyMovementDetails? Function()? moneyMovementDetails, InsightsResourcesPaymentEvaluationPaymentMethodDetails? Function()? paymentMethodDetails, InsightsResourcesPaymentEvaluationShipping? Function()? shippingDetails, String? Function()? statementDescriptor, }) { return InsightsResourcesPaymentEvaluationPaymentDetails(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  description: description != null ? description() : this.description,
  moneyMovementDetails: moneyMovementDetails != null ? moneyMovementDetails() : this.moneyMovementDetails,
  paymentMethodDetails: paymentMethodDetails != null ? paymentMethodDetails() : this.paymentMethodDetails,
  shippingDetails: shippingDetails != null ? shippingDetails() : this.shippingDetails,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
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

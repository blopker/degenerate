// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Describes the presence of the customer during the payment.
@immutable final class InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence {const InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence._(this.value);

factory InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence._(json),
}; }

static const InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence offSession = InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence._('off_session');

static const InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence onSession = InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence._('on_session');

static const List<InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence($value)'; } 
 }
/// Describes the type of payment.
@immutable final class InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType {const InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType._(this.value);

factory InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType.fromJson(String json) { return switch (json) {
  'one_off' => oneOff,
  'recurring' => recurring,
  'setup_one_off' => setupOneOff,
  'setup_recurring' => setupRecurring,
  _ => InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType._(json),
}; }

static const InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType oneOff = InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType._('one_off');

static const InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType recurring = InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType._('recurring');

static const InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType setupOneOff = InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType._('setup_one_off');

static const InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType setupRecurring = InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType._('setup_recurring');

static const List<InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType> values = [oneOff, recurring, setupOneOff, setupRecurring];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType($value)'; } 
 }
/// Money Movement card details attached to this payment.
@immutable final class InsightsResourcesPaymentEvaluationMoneyMovementCard {const InsightsResourcesPaymentEvaluationMoneyMovementCard({this.customerPresence = const Omittable.absent(), this.paymentType = const Omittable.absent(), });

factory InsightsResourcesPaymentEvaluationMoneyMovementCard.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationMoneyMovementCard(
  customerPresence: json.containsKey('customer_presence') ? Omittable(json['customer_presence'] != null ? InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence.fromJson(json['customer_presence'] as String) : null) : const Omittable.absent(),
  paymentType: json.containsKey('payment_type') ? Omittable(json['payment_type'] != null ? InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType.fromJson(json['payment_type'] as String) : null) : const Omittable.absent(),
); }

/// Describes the presence of the customer during the payment.
final Omittable<InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence?> customerPresence;

/// Describes the type of payment.
final Omittable<InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType?> paymentType;

Map<String, dynamic> toJson() { return {
  if (customerPresence.isPresent) 'customer_presence': customerPresence.value?.toJson(),
  if (paymentType.isPresent) 'payment_type': paymentType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer_presence', 'payment_type'}.contains(key)); } 
InsightsResourcesPaymentEvaluationMoneyMovementCard copyWith({Omittable<InsightsResourcesPaymentEvaluationMoneyMovementCardCustomerPresence?>? customerPresence, Omittable<InsightsResourcesPaymentEvaluationMoneyMovementCardPaymentType?>? paymentType, }) { return InsightsResourcesPaymentEvaluationMoneyMovementCard(
  customerPresence: customerPresence ?? this.customerPresence,
  paymentType: paymentType ?? this.paymentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationMoneyMovementCard &&
          customerPresence == other.customerPresence &&
          paymentType == other.paymentType; } 
@override int get hashCode { return Object.hash(customerPresence, paymentType); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationMoneyMovementCard(customerPresence: $customerPresence, paymentType: $paymentType)'; } 
 }

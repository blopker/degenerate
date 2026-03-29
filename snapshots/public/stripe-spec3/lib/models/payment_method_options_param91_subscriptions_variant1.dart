// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_options_param91_subscriptions_variant1_next_billing.dart';final class PaymentMethodOptionsParam91SubscriptionsVariant1Interval {const PaymentMethodOptionsParam91SubscriptionsVariant1Interval._(this.value);

factory PaymentMethodOptionsParam91SubscriptionsVariant1Interval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PaymentMethodOptionsParam91SubscriptionsVariant1Interval._(json),
}; }

static const PaymentMethodOptionsParam91SubscriptionsVariant1Interval day = PaymentMethodOptionsParam91SubscriptionsVariant1Interval._('day');

static const PaymentMethodOptionsParam91SubscriptionsVariant1Interval month = PaymentMethodOptionsParam91SubscriptionsVariant1Interval._('month');

static const PaymentMethodOptionsParam91SubscriptionsVariant1Interval week = PaymentMethodOptionsParam91SubscriptionsVariant1Interval._('week');

static const PaymentMethodOptionsParam91SubscriptionsVariant1Interval year = PaymentMethodOptionsParam91SubscriptionsVariant1Interval._('year');

static const List<PaymentMethodOptionsParam91SubscriptionsVariant1Interval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam91SubscriptionsVariant1Interval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam91SubscriptionsVariant1Interval($value)'; } 
 }
final class PaymentMethodOptionsParam91SubscriptionsVariant1 {const PaymentMethodOptionsParam91SubscriptionsVariant1({required this.interval, this.intervalCount, this.name, this.nextBilling, required this.reference, });

factory PaymentMethodOptionsParam91SubscriptionsVariant1.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam91SubscriptionsVariant1(
  interval: PaymentMethodOptionsParam91SubscriptionsVariant1Interval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
  name: json['name'] as String?,
  nextBilling: json['next_billing'] != null ? PaymentMethodOptionsParam91SubscriptionsVariant1NextBilling.fromJson(json['next_billing'] as Map<String, dynamic>) : null,
  reference: json['reference'] as String,
); }

final PaymentMethodOptionsParam91SubscriptionsVariant1Interval interval;

final int? intervalCount;

final String? name;

final PaymentMethodOptionsParam91SubscriptionsVariant1NextBilling? nextBilling;

final String reference;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
  'name': ?name,
  if (nextBilling != null) 'next_billing': nextBilling?.toJson(),
  'reference': reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval') &&
      json.containsKey('reference') && json['reference'] is String; } 
PaymentMethodOptionsParam91SubscriptionsVariant1 copyWith({PaymentMethodOptionsParam91SubscriptionsVariant1Interval? interval, int Function()? intervalCount, String Function()? name, PaymentMethodOptionsParam91SubscriptionsVariant1NextBilling Function()? nextBilling, String? reference, }) { return PaymentMethodOptionsParam91SubscriptionsVariant1(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
  name: name != null ? name() : this.name,
  nextBilling: nextBilling != null ? nextBilling() : this.nextBilling,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam91SubscriptionsVariant1 &&
          interval == other.interval &&
          intervalCount == other.intervalCount &&
          name == other.name &&
          nextBilling == other.nextBilling &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(interval, intervalCount, name, nextBilling, reference); } 
@override String toString() { return 'PaymentMethodOptionsParam91SubscriptionsVariant1(interval: $interval, intervalCount: $intervalCount, name: $name, nextBilling: $nextBilling, reference: $reference)'; } 
 }

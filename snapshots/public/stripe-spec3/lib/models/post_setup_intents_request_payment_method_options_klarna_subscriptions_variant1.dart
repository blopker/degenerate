// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_klarna_subscriptions_variant1_next_billing.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval {const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval day = PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval._('day');

static const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval month = PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval._('month');

static const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval week = PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval._('week');

static const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval year = PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval._('year');

static const List<PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 {const PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1({required this.interval, required this.nextBilling, required this.reference, this.intervalCount, this.name, });

factory PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1(
  interval: PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
  name: json['name'] as String?,
  nextBilling: PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1NextBilling.fromJson(json['next_billing'] as Map<String, dynamic>),
  reference: json['reference'] as String,
); }

final PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval interval;

final int? intervalCount;

final String? name;

final PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1NextBilling nextBilling;

final String reference;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
  'name': ?name,
  'next_billing': nextBilling.toJson(),
  'reference': reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval') &&
      json.containsKey('next_billing') &&
      json.containsKey('reference') && json['reference'] is String; } 
PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 copyWith({PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1Interval? interval, int Function()? intervalCount, String Function()? name, PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1NextBilling? nextBilling, String? reference, }) { return PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
  name: name != null ? name() : this.name,
  nextBilling: nextBilling ?? this.nextBilling,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1 &&
          interval == other.interval &&
          intervalCount == other.intervalCount &&
          name == other.name &&
          nextBilling == other.nextBilling &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(interval, intervalCount, name, nextBilling, reference); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsKlarnaSubscriptionsVariant1(interval: $interval, intervalCount: $intervalCount, name: $name, nextBilling: $nextBilling, reference: $reference)'; } 
 }

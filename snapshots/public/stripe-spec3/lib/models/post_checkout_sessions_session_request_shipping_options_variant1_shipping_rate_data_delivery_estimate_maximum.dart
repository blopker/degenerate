// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._(this.value);

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit.fromJson(String json) { return switch (json) {
  'business_day' => businessDay,
  'day' => day,
  'hour' => hour,
  'month' => month,
  'week' => week,
  _ => PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._(json),
}; }

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit businessDay = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._('business_day');

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit day = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._('day');

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit hour = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._('hour');

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit month = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._('month');

static const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit week = PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit._('week');

static const List<PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit> values = [businessDay, day, hour, month, week];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit($value)'; } 
 }
@immutable final class PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum {const PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum({required this.unit, required this.value, });

factory PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum(
  unit: PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit.fromJson(json['unit'] as String),
  value: (json['value'] as num).toInt(),
); }

final PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit unit;

final int value;

Map<String, dynamic> toJson() { return {
  'unit': unit.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('unit') &&
      json.containsKey('value') && json['value'] is num; } 
PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum copyWith({PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximumUnit? unit, int? value, }) { return PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum(
  unit: unit ?? this.unit,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum &&
          unit == other.unit &&
          value == other.value; } 
@override int get hashCode { return Object.hash(unit, value); } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestShippingOptionsVariant1ShippingRateDataDeliveryEstimateMaximum(unit: $unit, value: $value)'; } 
 }

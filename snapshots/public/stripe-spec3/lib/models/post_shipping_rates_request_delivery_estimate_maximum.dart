// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostShippingRatesRequestDeliveryEstimateMaximumUnit {const PostShippingRatesRequestDeliveryEstimateMaximumUnit._(this.value);

factory PostShippingRatesRequestDeliveryEstimateMaximumUnit.fromJson(String json) { return switch (json) {
  'business_day' => businessDay,
  'day' => day,
  'hour' => hour,
  'month' => month,
  'week' => week,
  _ => PostShippingRatesRequestDeliveryEstimateMaximumUnit._(json),
}; }

static const PostShippingRatesRequestDeliveryEstimateMaximumUnit businessDay = PostShippingRatesRequestDeliveryEstimateMaximumUnit._('business_day');

static const PostShippingRatesRequestDeliveryEstimateMaximumUnit day = PostShippingRatesRequestDeliveryEstimateMaximumUnit._('day');

static const PostShippingRatesRequestDeliveryEstimateMaximumUnit hour = PostShippingRatesRequestDeliveryEstimateMaximumUnit._('hour');

static const PostShippingRatesRequestDeliveryEstimateMaximumUnit month = PostShippingRatesRequestDeliveryEstimateMaximumUnit._('month');

static const PostShippingRatesRequestDeliveryEstimateMaximumUnit week = PostShippingRatesRequestDeliveryEstimateMaximumUnit._('week');

static const List<PostShippingRatesRequestDeliveryEstimateMaximumUnit> values = [businessDay, day, hour, month, week];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostShippingRatesRequestDeliveryEstimateMaximumUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostShippingRatesRequestDeliveryEstimateMaximumUnit($value)'; } 
 }
final class PostShippingRatesRequestDeliveryEstimateMaximum {const PostShippingRatesRequestDeliveryEstimateMaximum({required this.unit, required this.value, });

factory PostShippingRatesRequestDeliveryEstimateMaximum.fromJson(Map<String, dynamic> json) { return PostShippingRatesRequestDeliveryEstimateMaximum(
  unit: PostShippingRatesRequestDeliveryEstimateMaximumUnit.fromJson(json['unit'] as String),
  value: (json['value'] as num).toInt(),
); }

final PostShippingRatesRequestDeliveryEstimateMaximumUnit unit;

final int value;

Map<String, dynamic> toJson() { return {
  'unit': unit.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('unit') &&
      json.containsKey('value') && json['value'] is num; } 
PostShippingRatesRequestDeliveryEstimateMaximum copyWith({PostShippingRatesRequestDeliveryEstimateMaximumUnit? unit, int? value, }) { return PostShippingRatesRequestDeliveryEstimateMaximum(
  unit: unit ?? this.unit,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostShippingRatesRequestDeliveryEstimateMaximum &&
          unit == other.unit &&
          value == other.value; } 
@override int get hashCode { return Object.hash(unit, value); } 
@override String toString() { return 'PostShippingRatesRequestDeliveryEstimateMaximum(unit: $unit, value: $value)'; } 
 }

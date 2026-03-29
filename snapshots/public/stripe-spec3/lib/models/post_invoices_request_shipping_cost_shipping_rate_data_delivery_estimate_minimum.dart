// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit {const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._(this.value);

factory PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit.fromJson(String json) { return switch (json) {
  'business_day' => businessDay,
  'day' => day,
  'hour' => hour,
  'month' => month,
  'week' => week,
  _ => PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._(json),
}; }

static const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit businessDay = PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._('business_day');

static const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit day = PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._('day');

static const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit hour = PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._('hour');

static const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit month = PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._('month');

static const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit week = PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit._('week');

static const List<PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit> values = [businessDay, day, hour, month, week];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit($value)'; } 
 }
final class PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum {const PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum({required this.unit, required this.value, });

factory PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum(
  unit: PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit.fromJson(json['unit'] as String),
  value: (json['value'] as num).toInt(),
); }

final PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit unit;

final int value;

Map<String, dynamic> toJson() { return {
  'unit': unit.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('unit') &&
      json.containsKey('value') && json['value'] is num; } 
PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum copyWith({PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimumUnit? unit, int? value, }) { return PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum(
  unit: unit ?? this.unit,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum &&
          unit == other.unit &&
          value == other.value; } 
@override int get hashCode { return Object.hash(unit, value); } 
@override String toString() { return 'PostInvoicesRequestShippingCostShippingRateDataDeliveryEstimateMinimum(unit: $unit, value: $value)'; } 
 }

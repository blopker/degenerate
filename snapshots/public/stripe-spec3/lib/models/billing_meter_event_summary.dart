// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class BillingMeterEventSummaryObject {const BillingMeterEventSummaryObject._(this.value);

factory BillingMeterEventSummaryObject.fromJson(String json) { return switch (json) {
  'billing.meter_event_summary' => billingMeterEventSummary,
  _ => BillingMeterEventSummaryObject._(json),
}; }

static const BillingMeterEventSummaryObject billingMeterEventSummary = BillingMeterEventSummaryObject._('billing.meter_event_summary');

static const List<BillingMeterEventSummaryObject> values = [billingMeterEventSummary];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingMeterEventSummaryObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingMeterEventSummaryObject($value)'; } 
 }
/// A billing meter event summary represents an aggregated view of a customer's billing meter events within a specified timeframe. It indicates how much
/// usage was accrued by a customer for that period.
/// 
/// Note: Meters events are aggregated asynchronously so the meter event summaries provide an eventually consistent view of the reported usage.
@immutable final class BillingMeterEventSummary {const BillingMeterEventSummary({required this.aggregatedValue, required this.endTime, required this.id, required this.livemode, required this.meter, required this.object, required this.startTime, });

factory BillingMeterEventSummary.fromJson(Map<String, dynamic> json) { return BillingMeterEventSummary(
  aggregatedValue: (json['aggregated_value'] as num).toDouble(),
  endTime: (json['end_time'] as num).toInt(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  meter: json['meter'] as String,
  object: BillingMeterEventSummaryObject.fromJson(json['object'] as String),
  startTime: (json['start_time'] as num).toInt(),
); }

/// Aggregated value of all the events within `start_time` (inclusive) and `end_time` (inclusive). The aggregation strategy is defined on meter via `default_aggregation`.
final double aggregatedValue;

/// End timestamp for this event summary (exclusive). Must be aligned with minute boundaries.
final int endTime;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The meter associated with this event summary.
final String meter;

/// String representing the object's type. Objects of the same type share the same value.
final BillingMeterEventSummaryObject object;

/// Start timestamp for this event summary (inclusive). Must be aligned with minute boundaries.
final int startTime;

Map<String, dynamic> toJson() { return {
  'aggregated_value': aggregatedValue,
  'end_time': endTime,
  'id': id,
  'livemode': livemode,
  'meter': meter,
  'object': object.toJson(),
  'start_time': startTime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('aggregated_value') && json['aggregated_value'] is num &&
      json.containsKey('end_time') && json['end_time'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('meter') && json['meter'] is String &&
      json.containsKey('object') &&
      json.containsKey('start_time') && json['start_time'] is num; } 
BillingMeterEventSummary copyWith({double? aggregatedValue, int? endTime, String? id, bool? livemode, String? meter, BillingMeterEventSummaryObject? object, int? startTime, }) { return BillingMeterEventSummary(
  aggregatedValue: aggregatedValue ?? this.aggregatedValue,
  endTime: endTime ?? this.endTime,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  meter: meter ?? this.meter,
  object: object ?? this.object,
  startTime: startTime ?? this.startTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingMeterEventSummary &&
          aggregatedValue == other.aggregatedValue &&
          endTime == other.endTime &&
          id == other.id &&
          livemode == other.livemode &&
          meter == other.meter &&
          object == other.object &&
          startTime == other.startTime; } 
@override int get hashCode { return Object.hash(aggregatedValue, endTime, id, livemode, meter, object, startTime); } 
@override String toString() { return 'BillingMeterEventSummary(aggregatedValue: $aggregatedValue, endTime: $endTime, id: $id, livemode: $livemode, meter: $meter, object: $object, startTime: $startTime)'; } 
 }

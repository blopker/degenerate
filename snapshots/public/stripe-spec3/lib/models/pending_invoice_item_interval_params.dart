// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PendingInvoiceItemIntervalParamsInterval {const PendingInvoiceItemIntervalParamsInterval._(this.value);

factory PendingInvoiceItemIntervalParamsInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PendingInvoiceItemIntervalParamsInterval._(json),
}; }

static const PendingInvoiceItemIntervalParamsInterval day = PendingInvoiceItemIntervalParamsInterval._('day');

static const PendingInvoiceItemIntervalParamsInterval month = PendingInvoiceItemIntervalParamsInterval._('month');

static const PendingInvoiceItemIntervalParamsInterval week = PendingInvoiceItemIntervalParamsInterval._('week');

static const PendingInvoiceItemIntervalParamsInterval year = PendingInvoiceItemIntervalParamsInterval._('year');

static const List<PendingInvoiceItemIntervalParamsInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PendingInvoiceItemIntervalParamsInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PendingInvoiceItemIntervalParamsInterval($value)'; } 
 }
@immutable final class PendingInvoiceItemIntervalParams {const PendingInvoiceItemIntervalParams({required this.interval, this.intervalCount, });

factory PendingInvoiceItemIntervalParams.fromJson(Map<String, dynamic> json) { return PendingInvoiceItemIntervalParams(
  interval: PendingInvoiceItemIntervalParamsInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PendingInvoiceItemIntervalParamsInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PendingInvoiceItemIntervalParams copyWith({PendingInvoiceItemIntervalParamsInterval? interval, int Function()? intervalCount, }) { return PendingInvoiceItemIntervalParams(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PendingInvoiceItemIntervalParams &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PendingInvoiceItemIntervalParams(interval: $interval, intervalCount: $intervalCount)'; } 
 }

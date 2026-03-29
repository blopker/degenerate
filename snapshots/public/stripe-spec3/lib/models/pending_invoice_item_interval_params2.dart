// GENERATED CODE - DO NOT MODIFY BY HAND

final class PendingInvoiceItemIntervalParams2Interval {const PendingInvoiceItemIntervalParams2Interval._(this.value);

factory PendingInvoiceItemIntervalParams2Interval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PendingInvoiceItemIntervalParams2Interval._(json),
}; }

static const PendingInvoiceItemIntervalParams2Interval day = PendingInvoiceItemIntervalParams2Interval._('day');

static const PendingInvoiceItemIntervalParams2Interval month = PendingInvoiceItemIntervalParams2Interval._('month');

static const PendingInvoiceItemIntervalParams2Interval week = PendingInvoiceItemIntervalParams2Interval._('week');

static const PendingInvoiceItemIntervalParams2Interval year = PendingInvoiceItemIntervalParams2Interval._('year');

static const List<PendingInvoiceItemIntervalParams2Interval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PendingInvoiceItemIntervalParams2Interval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PendingInvoiceItemIntervalParams2Interval($value)'; } 
 }
final class PendingInvoiceItemIntervalParams2 {const PendingInvoiceItemIntervalParams2({required this.interval, this.intervalCount, });

factory PendingInvoiceItemIntervalParams2.fromJson(Map<String, dynamic> json) { return PendingInvoiceItemIntervalParams2(
  interval: PendingInvoiceItemIntervalParams2Interval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PendingInvoiceItemIntervalParams2Interval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PendingInvoiceItemIntervalParams2 copyWith({PendingInvoiceItemIntervalParams2Interval? interval, int Function()? intervalCount, }) { return PendingInvoiceItemIntervalParams2(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PendingInvoiceItemIntervalParams2 &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PendingInvoiceItemIntervalParams2(interval: $interval, intervalCount: $intervalCount)'; } 
 }

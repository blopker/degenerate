// GENERATED CODE - DO NOT MODIFY BY HAND

final class PendingInvoiceItemIntervalParams4Interval {const PendingInvoiceItemIntervalParams4Interval._(this.value);

factory PendingInvoiceItemIntervalParams4Interval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PendingInvoiceItemIntervalParams4Interval._(json),
}; }

static const PendingInvoiceItemIntervalParams4Interval day = PendingInvoiceItemIntervalParams4Interval._('day');

static const PendingInvoiceItemIntervalParams4Interval month = PendingInvoiceItemIntervalParams4Interval._('month');

static const PendingInvoiceItemIntervalParams4Interval week = PendingInvoiceItemIntervalParams4Interval._('week');

static const PendingInvoiceItemIntervalParams4Interval year = PendingInvoiceItemIntervalParams4Interval._('year');

static const List<PendingInvoiceItemIntervalParams4Interval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PendingInvoiceItemIntervalParams4Interval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PendingInvoiceItemIntervalParams4Interval($value)'; } 
 }
final class PendingInvoiceItemIntervalParams4 {const PendingInvoiceItemIntervalParams4({required this.interval, this.intervalCount, });

factory PendingInvoiceItemIntervalParams4.fromJson(Map<String, dynamic> json) { return PendingInvoiceItemIntervalParams4(
  interval: PendingInvoiceItemIntervalParams4Interval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PendingInvoiceItemIntervalParams4Interval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PendingInvoiceItemIntervalParams4 copyWith({PendingInvoiceItemIntervalParams4Interval? interval, int Function()? intervalCount, }) { return PendingInvoiceItemIntervalParams4(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PendingInvoiceItemIntervalParams4 &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PendingInvoiceItemIntervalParams4(interval: $interval, intervalCount: $intervalCount)'; } 
 }

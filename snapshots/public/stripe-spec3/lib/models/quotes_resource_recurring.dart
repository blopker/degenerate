// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'quotes_resource_total_details.dart';/// The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
@immutable final class QuotesResourceRecurringInterval {const QuotesResourceRecurringInterval._(this.value);

factory QuotesResourceRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => QuotesResourceRecurringInterval._(json),
}; }

static const QuotesResourceRecurringInterval day = QuotesResourceRecurringInterval._('day');

static const QuotesResourceRecurringInterval month = QuotesResourceRecurringInterval._('month');

static const QuotesResourceRecurringInterval week = QuotesResourceRecurringInterval._('week');

static const QuotesResourceRecurringInterval year = QuotesResourceRecurringInterval._('year');

static const List<QuotesResourceRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is QuotesResourceRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'QuotesResourceRecurringInterval($value)'; } 
 }
/// 
@immutable final class QuotesResourceRecurring {const QuotesResourceRecurring({required this.amountSubtotal, required this.amountTotal, required this.interval, required this.intervalCount, required this.totalDetails, });

factory QuotesResourceRecurring.fromJson(Map<String, dynamic> json) { return QuotesResourceRecurring(
  amountSubtotal: (json['amount_subtotal'] as num).toInt(),
  amountTotal: (json['amount_total'] as num).toInt(),
  interval: QuotesResourceRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: (json['interval_count'] as num).toInt(),
  totalDetails: QuotesResourceTotalDetails.fromJson(json['total_details'] as Map<String, dynamic>),
); }

/// Total before any discounts or taxes are applied.
final int amountSubtotal;

/// Total after discounts and taxes are applied.
final int amountTotal;

/// The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
final QuotesResourceRecurringInterval interval;

/// The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
final int intervalCount;

final QuotesResourceTotalDetails totalDetails;

Map<String, dynamic> toJson() { return {
  'amount_subtotal': amountSubtotal,
  'amount_total': amountTotal,
  'interval': interval.toJson(),
  'interval_count': intervalCount,
  'total_details': totalDetails.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_subtotal') && json['amount_subtotal'] is num &&
      json.containsKey('amount_total') && json['amount_total'] is num &&
      json.containsKey('interval') &&
      json.containsKey('interval_count') && json['interval_count'] is num &&
      json.containsKey('total_details'); } 
QuotesResourceRecurring copyWith({int? amountSubtotal, int? amountTotal, QuotesResourceRecurringInterval? interval, int? intervalCount, QuotesResourceTotalDetails? totalDetails, }) { return QuotesResourceRecurring(
  amountSubtotal: amountSubtotal ?? this.amountSubtotal,
  amountTotal: amountTotal ?? this.amountTotal,
  interval: interval ?? this.interval,
  intervalCount: intervalCount ?? this.intervalCount,
  totalDetails: totalDetails ?? this.totalDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QuotesResourceRecurring &&
          amountSubtotal == other.amountSubtotal &&
          amountTotal == other.amountTotal &&
          interval == other.interval &&
          intervalCount == other.intervalCount &&
          totalDetails == other.totalDetails; } 
@override int get hashCode { return Object.hash(amountSubtotal, amountTotal, interval, intervalCount, totalDetails); } 
@override String toString() { return 'QuotesResourceRecurring(amountSubtotal: $amountSubtotal, amountTotal: $amountTotal, interval: $interval, intervalCount: $intervalCount, totalDetails: $totalDetails)'; } 
 }

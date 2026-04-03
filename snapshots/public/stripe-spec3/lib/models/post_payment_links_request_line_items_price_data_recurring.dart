// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksRequestLineItemsPriceDataRecurringInterval {const PostPaymentLinksRequestLineItemsPriceDataRecurringInterval._(this.value);

factory PostPaymentLinksRequestLineItemsPriceDataRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostPaymentLinksRequestLineItemsPriceDataRecurringInterval._(json),
}; }

static const PostPaymentLinksRequestLineItemsPriceDataRecurringInterval day = PostPaymentLinksRequestLineItemsPriceDataRecurringInterval._('day');

static const PostPaymentLinksRequestLineItemsPriceDataRecurringInterval month = PostPaymentLinksRequestLineItemsPriceDataRecurringInterval._('month');

static const PostPaymentLinksRequestLineItemsPriceDataRecurringInterval week = PostPaymentLinksRequestLineItemsPriceDataRecurringInterval._('week');

static const PostPaymentLinksRequestLineItemsPriceDataRecurringInterval year = PostPaymentLinksRequestLineItemsPriceDataRecurringInterval._('year');

static const List<PostPaymentLinksRequestLineItemsPriceDataRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestLineItemsPriceDataRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestLineItemsPriceDataRecurringInterval($value)'; } 
 }
@immutable final class PostPaymentLinksRequestLineItemsPriceDataRecurring {const PostPaymentLinksRequestLineItemsPriceDataRecurring({required this.interval, this.intervalCount, });

factory PostPaymentLinksRequestLineItemsPriceDataRecurring.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestLineItemsPriceDataRecurring(
  interval: PostPaymentLinksRequestLineItemsPriceDataRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostPaymentLinksRequestLineItemsPriceDataRecurringInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostPaymentLinksRequestLineItemsPriceDataRecurring copyWith({PostPaymentLinksRequestLineItemsPriceDataRecurringInterval? interval, int Function()? intervalCount, }) { return PostPaymentLinksRequestLineItemsPriceDataRecurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestLineItemsPriceDataRecurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostPaymentLinksRequestLineItemsPriceDataRecurring(interval: $interval, intervalCount: $intervalCount)'; } 
 }

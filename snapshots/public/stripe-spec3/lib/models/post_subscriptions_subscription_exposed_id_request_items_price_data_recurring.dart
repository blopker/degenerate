// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval {const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval day = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval._('day');

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval month = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval._('month');

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval week = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval._('week');

static const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval year = PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval._('year');

static const List<PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval($value)'; } 
 }
@immutable final class PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring {const PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring({required this.interval, this.intervalCount, });

factory PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring(
  interval: PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring copyWith({PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurringInterval? interval, int Function()? intervalCount, }) { return PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestItemsPriceDataRecurring(interval: $interval, intervalCount: $intervalCount)'; } 
 }

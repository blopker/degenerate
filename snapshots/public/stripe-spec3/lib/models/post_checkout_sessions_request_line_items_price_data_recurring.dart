// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval {const PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval._(this.value);

factory PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval._(json),
}; }

static const PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval day = PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval._('day');

static const PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval month = PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval._('month');

static const PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval week = PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval._('week');

static const PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval year = PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval._('year');

static const List<PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval($value)'; } 
 }
final class PostCheckoutSessionsRequestLineItemsPriceDataRecurring {const PostCheckoutSessionsRequestLineItemsPriceDataRecurring({required this.interval, this.intervalCount, });

factory PostCheckoutSessionsRequestLineItemsPriceDataRecurring.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestLineItemsPriceDataRecurring(
  interval: PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostCheckoutSessionsRequestLineItemsPriceDataRecurring copyWith({PostCheckoutSessionsRequestLineItemsPriceDataRecurringInterval? interval, int Function()? intervalCount, }) { return PostCheckoutSessionsRequestLineItemsPriceDataRecurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestLineItemsPriceDataRecurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostCheckoutSessionsRequestLineItemsPriceDataRecurring(interval: $interval, intervalCount: $intervalCount)'; } 
 }

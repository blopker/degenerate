// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionItemsRequestPriceDataRecurringInterval {const PostSubscriptionItemsRequestPriceDataRecurringInterval._(this.value);

factory PostSubscriptionItemsRequestPriceDataRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSubscriptionItemsRequestPriceDataRecurringInterval._(json),
}; }

static const PostSubscriptionItemsRequestPriceDataRecurringInterval day = PostSubscriptionItemsRequestPriceDataRecurringInterval._('day');

static const PostSubscriptionItemsRequestPriceDataRecurringInterval month = PostSubscriptionItemsRequestPriceDataRecurringInterval._('month');

static const PostSubscriptionItemsRequestPriceDataRecurringInterval week = PostSubscriptionItemsRequestPriceDataRecurringInterval._('week');

static const PostSubscriptionItemsRequestPriceDataRecurringInterval year = PostSubscriptionItemsRequestPriceDataRecurringInterval._('year');

static const List<PostSubscriptionItemsRequestPriceDataRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsRequestPriceDataRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsRequestPriceDataRecurringInterval($value)'; } 
 }
final class PostSubscriptionItemsRequestPriceDataRecurring {const PostSubscriptionItemsRequestPriceDataRecurring({required this.interval, this.intervalCount, });

factory PostSubscriptionItemsRequestPriceDataRecurring.fromJson(Map<String, dynamic> json) { return PostSubscriptionItemsRequestPriceDataRecurring(
  interval: PostSubscriptionItemsRequestPriceDataRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostSubscriptionItemsRequestPriceDataRecurringInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostSubscriptionItemsRequestPriceDataRecurring copyWith({PostSubscriptionItemsRequestPriceDataRecurringInterval? interval, int Function()? intervalCount, }) { return PostSubscriptionItemsRequestPriceDataRecurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionItemsRequestPriceDataRecurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostSubscriptionItemsRequestPriceDataRecurring(interval: $interval, intervalCount: $intervalCount)'; } 
 }

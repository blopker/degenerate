// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionItemsItemRequestPriceDataRecurringInterval {const PostSubscriptionItemsItemRequestPriceDataRecurringInterval._(this.value);

factory PostSubscriptionItemsItemRequestPriceDataRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSubscriptionItemsItemRequestPriceDataRecurringInterval._(json),
}; }

static const PostSubscriptionItemsItemRequestPriceDataRecurringInterval day = PostSubscriptionItemsItemRequestPriceDataRecurringInterval._('day');

static const PostSubscriptionItemsItemRequestPriceDataRecurringInterval month = PostSubscriptionItemsItemRequestPriceDataRecurringInterval._('month');

static const PostSubscriptionItemsItemRequestPriceDataRecurringInterval week = PostSubscriptionItemsItemRequestPriceDataRecurringInterval._('week');

static const PostSubscriptionItemsItemRequestPriceDataRecurringInterval year = PostSubscriptionItemsItemRequestPriceDataRecurringInterval._('year');

static const List<PostSubscriptionItemsItemRequestPriceDataRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestPriceDataRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsItemRequestPriceDataRecurringInterval($value)'; } 
 }
final class PostSubscriptionItemsItemRequestPriceDataRecurring {const PostSubscriptionItemsItemRequestPriceDataRecurring({required this.interval, this.intervalCount, });

factory PostSubscriptionItemsItemRequestPriceDataRecurring.fromJson(Map<String, dynamic> json) { return PostSubscriptionItemsItemRequestPriceDataRecurring(
  interval: PostSubscriptionItemsItemRequestPriceDataRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostSubscriptionItemsItemRequestPriceDataRecurringInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostSubscriptionItemsItemRequestPriceDataRecurring copyWith({PostSubscriptionItemsItemRequestPriceDataRecurringInterval? interval, int Function()? intervalCount, }) { return PostSubscriptionItemsItemRequestPriceDataRecurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionItemsItemRequestPriceDataRecurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostSubscriptionItemsItemRequestPriceDataRecurring(interval: $interval, intervalCount: $intervalCount)'; } 
 }

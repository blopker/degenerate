// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval._(json),
}; }

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval day = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval._('day');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval month = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval._('month');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval week = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval._('week');

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval year = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval._('year');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval($value)'; } 
 }
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring({required this.interval, this.intervalCount, });

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring(
  interval: PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring copyWith({PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurringInterval? interval, int Function()? intervalCount, }) { return PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsPriceDataRecurring(interval: $interval, intervalCount: $intervalCount)'; } 
 }

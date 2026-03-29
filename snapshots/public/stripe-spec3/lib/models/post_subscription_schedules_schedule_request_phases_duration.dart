// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval {const PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval day = PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval._('day');

static const PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval month = PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval._('month');

static const PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval week = PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval._('week');

static const PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval year = PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval._('year');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval($value)'; } 
 }
final class PostSubscriptionSchedulesScheduleRequestPhasesDuration {const PostSubscriptionSchedulesScheduleRequestPhasesDuration({required this.interval, this.intervalCount, });

factory PostSubscriptionSchedulesScheduleRequestPhasesDuration.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestPhasesDuration(
  interval: PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval.fromJson(json['interval'] as String),
  intervalCount: json['interval_count'] != null ? (json['interval_count'] as num).toInt() : null,
); }

final PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval interval;

final int? intervalCount;

Map<String, dynamic> toJson() { return {
  'interval': interval.toJson(),
  'interval_count': ?intervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('interval'); } 
PostSubscriptionSchedulesScheduleRequestPhasesDuration copyWith({PostSubscriptionSchedulesScheduleRequestPhasesDurationInterval? interval, int Function()? intervalCount, }) { return PostSubscriptionSchedulesScheduleRequestPhasesDuration(
  interval: interval ?? this.interval,
  intervalCount: intervalCount != null ? intervalCount() : this.intervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesDuration &&
          interval == other.interval &&
          intervalCount == other.intervalCount; } 
@override int get hashCode { return Object.hash(interval, intervalCount); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesDuration(interval: $interval, intervalCount: $intervalCount)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposGetRepoRuleSuitesTimePeriod {const ReposGetRepoRuleSuitesTimePeriod._(this.value);

factory ReposGetRepoRuleSuitesTimePeriod.fromJson(String json) { return switch (json) {
  'hour' => hour,
  'day' => day,
  'week' => week,
  'month' => month,
  _ => ReposGetRepoRuleSuitesTimePeriod._(json),
}; }

static const ReposGetRepoRuleSuitesTimePeriod hour = ReposGetRepoRuleSuitesTimePeriod._('hour');

static const ReposGetRepoRuleSuitesTimePeriod day = ReposGetRepoRuleSuitesTimePeriod._('day');

static const ReposGetRepoRuleSuitesTimePeriod week = ReposGetRepoRuleSuitesTimePeriod._('week');

static const ReposGetRepoRuleSuitesTimePeriod month = ReposGetRepoRuleSuitesTimePeriod._('month');

static const List<ReposGetRepoRuleSuitesTimePeriod> values = [hour, day, week, month];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetRepoRuleSuitesTimePeriod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposGetRepoRuleSuitesTimePeriod($value)'; } 
 }

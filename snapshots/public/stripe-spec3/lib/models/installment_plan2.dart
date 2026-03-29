// GENERATED CODE - DO NOT MODIFY BY HAND

final class InstallmentPlan2Interval {const InstallmentPlan2Interval._(this.value);

factory InstallmentPlan2Interval.fromJson(String json) { return switch (json) {
  'month' => month,
  _ => InstallmentPlan2Interval._(json),
}; }

static const InstallmentPlan2Interval month = InstallmentPlan2Interval._('month');

static const List<InstallmentPlan2Interval> values = [month];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InstallmentPlan2Interval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InstallmentPlan2Interval($value)'; } 
 }
final class InstallmentPlan2Type {const InstallmentPlan2Type._(this.value);

factory InstallmentPlan2Type.fromJson(String json) { return switch (json) {
  'bonus' => bonus,
  'fixed_count' => fixedCount,
  'revolving' => revolving,
  _ => InstallmentPlan2Type._(json),
}; }

static const InstallmentPlan2Type bonus = InstallmentPlan2Type._('bonus');

static const InstallmentPlan2Type fixedCount = InstallmentPlan2Type._('fixed_count');

static const InstallmentPlan2Type revolving = InstallmentPlan2Type._('revolving');

static const List<InstallmentPlan2Type> values = [bonus, fixedCount, revolving];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InstallmentPlan2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InstallmentPlan2Type($value)'; } 
 }
final class InstallmentPlan2 {const InstallmentPlan2({this.count, this.interval, required this.type, });

factory InstallmentPlan2.fromJson(Map<String, dynamic> json) { return InstallmentPlan2(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  interval: json['interval'] != null ? InstallmentPlan2Interval.fromJson(json['interval'] as String) : null,
  type: InstallmentPlan2Type.fromJson(json['type'] as String),
); }

final int? count;

final InstallmentPlan2Interval? interval;

final InstallmentPlan2Type type;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  if (interval != null) 'interval': interval?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
InstallmentPlan2 copyWith({int Function()? count, InstallmentPlan2Interval Function()? interval, InstallmentPlan2Type? type, }) { return InstallmentPlan2(
  count: count != null ? count() : this.count,
  interval: interval != null ? interval() : this.interval,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InstallmentPlan2 &&
          count == other.count &&
          interval == other.interval &&
          type == other.type; } 
@override int get hashCode { return Object.hash(count, interval, type); } 
@override String toString() { return 'InstallmentPlan2(count: $count, interval: $interval, type: $type)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudflarePipelinesTimestampUnit {const CloudflarePipelinesTimestampUnit._(this.value);

factory CloudflarePipelinesTimestampUnit.fromJson(String json) { return switch (json) {
  'second' => second,
  'millisecond' => millisecond,
  'microsecond' => microsecond,
  'nanosecond' => nanosecond,
  _ => CloudflarePipelinesTimestampUnit._(json),
}; }

static const CloudflarePipelinesTimestampUnit second = CloudflarePipelinesTimestampUnit._('second');

static const CloudflarePipelinesTimestampUnit millisecond = CloudflarePipelinesTimestampUnit._('millisecond');

static const CloudflarePipelinesTimestampUnit microsecond = CloudflarePipelinesTimestampUnit._('microsecond');

static const CloudflarePipelinesTimestampUnit nanosecond = CloudflarePipelinesTimestampUnit._('nanosecond');

static const List<CloudflarePipelinesTimestampUnit> values = [second, millisecond, microsecond, nanosecond];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesTimestampUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflarePipelinesTimestampUnit($value)'; } 
 }
final class CloudflarePipelinesTimestampField {const CloudflarePipelinesTimestampField({this.unit});

factory CloudflarePipelinesTimestampField.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesTimestampField(
  unit: json['unit'] != null ? CloudflarePipelinesTimestampUnit.fromJson(json['unit'] as String) : null,
); }

final CloudflarePipelinesTimestampUnit? unit;

Map<String, dynamic> toJson() { return {
  if (unit != null) 'unit': unit?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CloudflarePipelinesTimestampField copyWith({CloudflarePipelinesTimestampUnit Function()? unit}) { return CloudflarePipelinesTimestampField(
  unit: unit != null ? unit() : this.unit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesTimestampField &&
          unit == other.unit; } 
@override int get hashCode { return unit.hashCode; } 
@override String toString() { return 'CloudflarePipelinesTimestampField(unit: $unit)'; } 
 }

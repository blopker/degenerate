// GENERATED CODE - DO NOT MODIFY BY HAND

final class Int64Type {const Int64Type._(this.value);

factory Int64Type.fromJson(String json) { return switch (json) {
  'int64' => int64,
  _ => Int64Type._(json),
}; }

static const Int64Type int64 = Int64Type._('int64');

static const List<Int64Type> values = [int64];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Int64Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Int64Type($value)'; } 
 }
final class Int64 {const Int64({required this.type});

factory Int64.fromJson(Map<String, dynamic> json) { return Int64(
  type: Int64Type.fromJson(json['type'] as String),
); }

final Int64Type type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Int64 copyWith({Int64Type? type}) { return Int64(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Int64 &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'Int64(type: $type)'; } 
 }

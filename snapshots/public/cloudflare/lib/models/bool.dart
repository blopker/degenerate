// GENERATED CODE - DO NOT MODIFY BY HAND

final class BoolType {const BoolType._(this.value);

factory BoolType.fromJson(String json) { return switch (json) {
  'bool' => $bool,
  _ => BoolType._(json),
}; }

static const BoolType $bool = BoolType._('bool');

static const List<BoolType> values = [$bool];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BoolType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BoolType($value)'; } 
 }
final class Bool {const Bool({required this.type});

factory Bool.fromJson(Map<String, dynamic> json) { return Bool(
  type: BoolType.fromJson(json['type'] as String),
); }

final BoolType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Bool copyWith({BoolType? type}) { return Bool(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Bool &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'Bool(type: $type)'; } 
 }

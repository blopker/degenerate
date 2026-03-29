// GENERATED CODE - DO NOT MODIFY BY HAND

final class BinaryType {const BinaryType._(this.value);

factory BinaryType.fromJson(String json) { return switch (json) {
  'binary' => binary,
  _ => BinaryType._(json),
}; }

static const BinaryType binary = BinaryType._('binary');

static const List<BinaryType> values = [binary];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BinaryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BinaryType($value)'; } 
 }
final class Binary {const Binary({required this.type});

factory Binary.fromJson(Map<String, dynamic> json) { return Binary(
  type: BinaryType.fromJson(json['type'] as String),
); }

final BinaryType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Binary copyWith({BinaryType? type}) { return Binary(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Binary &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'Binary(type: $type)'; } 
 }

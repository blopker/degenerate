// GENERATED CODE - DO NOT MODIFY BY HAND

/// Type of source
final class MqEventSourceVectorizeType {const MqEventSourceVectorizeType._(this.value);

factory MqEventSourceVectorizeType.fromJson(String json) { return switch (json) {
  'vectorize' => vectorize,
  _ => MqEventSourceVectorizeType._(json),
}; }

static const MqEventSourceVectorizeType vectorize = MqEventSourceVectorizeType._('vectorize');

static const List<MqEventSourceVectorizeType> values = [vectorize];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventSourceVectorizeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqEventSourceVectorizeType($value)'; } 
 }
final class MqEventSourceVectorize {const MqEventSourceVectorize({this.type});

factory MqEventSourceVectorize.fromJson(Map<String, dynamic> json) { return MqEventSourceVectorize(
  type: json['type'] != null ? MqEventSourceVectorizeType.fromJson(json['type'] as String) : null,
); }

/// Type of source
final MqEventSourceVectorizeType? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MqEventSourceVectorize copyWith({MqEventSourceVectorizeType Function()? type}) { return MqEventSourceVectorize(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventSourceVectorize &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'MqEventSourceVectorize(type: $type)'; } 
 }

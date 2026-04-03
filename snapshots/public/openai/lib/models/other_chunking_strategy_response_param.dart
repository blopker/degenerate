// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Always `other`.
@immutable final class OtherChunkingStrategyResponseParamType {const OtherChunkingStrategyResponseParamType._(this.value);

factory OtherChunkingStrategyResponseParamType.fromJson(String json) { return switch (json) {
  'other' => $other,
  _ => OtherChunkingStrategyResponseParamType._(json),
}; }

static const OtherChunkingStrategyResponseParamType $other = OtherChunkingStrategyResponseParamType._('other');

static const List<OtherChunkingStrategyResponseParamType> values = [$other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OtherChunkingStrategyResponseParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OtherChunkingStrategyResponseParamType($value)'; } 
 }
/// This is returned when the chunking strategy is unknown. Typically, this is because the file was indexed before the `chunking_strategy` concept was introduced in the API.
@immutable final class OtherChunkingStrategyResponseParam {const OtherChunkingStrategyResponseParam({required this.type});

factory OtherChunkingStrategyResponseParam.fromJson(Map<String, dynamic> json) { return OtherChunkingStrategyResponseParam(
  type: OtherChunkingStrategyResponseParamType.fromJson(json['type'] as String),
); }

/// Always `other`.
final OtherChunkingStrategyResponseParamType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
OtherChunkingStrategyResponseParam copyWith({OtherChunkingStrategyResponseParamType? type}) { return OtherChunkingStrategyResponseParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OtherChunkingStrategyResponseParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'OtherChunkingStrategyResponseParam(type: $type)'; } 
 }

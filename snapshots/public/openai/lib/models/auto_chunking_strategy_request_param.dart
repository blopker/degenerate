// GENERATED CODE - DO NOT MODIFY BY HAND

/// The default strategy. This strategy currently uses a `max_chunk_size_tokens` of `800` and `chunk_overlap_tokens` of `400`.
final class AutoChunkingStrategyRequestParam {const AutoChunkingStrategyRequestParam({required this.type});

factory AutoChunkingStrategyRequestParam.fromJson(Map<String, dynamic> json) { return AutoChunkingStrategyRequestParam(
  type: json['type'] as String,
); }

/// Always `auto`.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
AutoChunkingStrategyRequestParam copyWith({String? type}) { return AutoChunkingStrategyRequestParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoChunkingStrategyRequestParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'AutoChunkingStrategyRequestParam(type: $type)'; } 
 }

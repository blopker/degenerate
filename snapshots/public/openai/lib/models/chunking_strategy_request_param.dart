// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'auto_chunking_strategy_request_param.dart';import 'static_chunking_strategy_request_param.dart';/// The chunking strategy used to chunk the file(s). If not set, will use the `auto` strategy.
sealed class ChunkingStrategyRequestParam {const ChunkingStrategyRequestParam();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ChunkingStrategyRequestParam.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'auto' => ChunkingStrategyRequestParamAuto.fromJson(json),
  'static' => ChunkingStrategyRequestParamStatic.fromJson(json),
  _ => ChunkingStrategyRequestParam$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ChunkingStrategyRequestParam$Unknown; } 
 }
@immutable final class ChunkingStrategyRequestParamAuto extends ChunkingStrategyRequestParam {const ChunkingStrategyRequestParamAuto(this.autoChunkingStrategyRequestParam);

factory ChunkingStrategyRequestParamAuto.fromJson(Map<String, dynamic> json) { return ChunkingStrategyRequestParamAuto(AutoChunkingStrategyRequestParam.fromJson(json)); }

final AutoChunkingStrategyRequestParam autoChunkingStrategyRequestParam;

@override String get type { return 'auto'; } 
@override Map<String, dynamic> toJson() { return {...autoChunkingStrategyRequestParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChunkingStrategyRequestParamAuto && autoChunkingStrategyRequestParam == other.autoChunkingStrategyRequestParam; } 
@override int get hashCode { return autoChunkingStrategyRequestParam.hashCode; } 
@override String toString() { return 'ChunkingStrategyRequestParamAuto(autoChunkingStrategyRequestParam: $autoChunkingStrategyRequestParam)'; } 
 }
@immutable final class ChunkingStrategyRequestParamStatic extends ChunkingStrategyRequestParam {const ChunkingStrategyRequestParamStatic(this.staticChunkingStrategyRequestParam);

factory ChunkingStrategyRequestParamStatic.fromJson(Map<String, dynamic> json) { return ChunkingStrategyRequestParamStatic(StaticChunkingStrategyRequestParam.fromJson(json)); }

final StaticChunkingStrategyRequestParam staticChunkingStrategyRequestParam;

@override String get type { return 'static'; } 
@override Map<String, dynamic> toJson() { return {...staticChunkingStrategyRequestParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChunkingStrategyRequestParamStatic && staticChunkingStrategyRequestParam == other.staticChunkingStrategyRequestParam; } 
@override int get hashCode { return staticChunkingStrategyRequestParam.hashCode; } 
@override String toString() { return 'ChunkingStrategyRequestParamStatic(staticChunkingStrategyRequestParam: $staticChunkingStrategyRequestParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ChunkingStrategyRequestParam$Unknown extends ChunkingStrategyRequestParam {const ChunkingStrategyRequestParam$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChunkingStrategyRequestParam$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ChunkingStrategyRequestParam.unknown($json)'; } 
 }

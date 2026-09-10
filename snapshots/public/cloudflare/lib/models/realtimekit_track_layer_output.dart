// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_storage_config.dart';/// The type of output destination this layer is being exported to.
@immutable final class RealtimekitTrackLayerOutputType {const RealtimekitTrackLayerOutputType._(this.value);

factory RealtimekitTrackLayerOutputType.fromJson(String json) { return switch (json) {
  'REALTIMEKIT_BUCKET' => realtimekitBucket,
  'STORAGE_CONFIG' => storageConfig,
  _ => RealtimekitTrackLayerOutputType._(json),
}; }

static const RealtimekitTrackLayerOutputType realtimekitBucket = RealtimekitTrackLayerOutputType._('REALTIMEKIT_BUCKET');

static const RealtimekitTrackLayerOutputType storageConfig = RealtimekitTrackLayerOutputType._('STORAGE_CONFIG');

static const List<RealtimekitTrackLayerOutputType> values = [realtimekitBucket, storageConfig];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitTrackLayerOutputType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitTrackLayerOutputType($value)'; } 
 }
@immutable final class RealtimekitTrackLayerOutput {const RealtimekitTrackLayerOutput({this.storageConfig = const Omittable.absent(), this.type, });

factory RealtimekitTrackLayerOutput.fromJson(Map<String, dynamic> json) { return RealtimekitTrackLayerOutput(
  storageConfig: json.containsKey('storage_config') ? Omittable(json['storage_config'] != null ? RealtimekitStorageConfig.fromJson(json['storage_config'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: json['type'] != null ? RealtimekitTrackLayerOutputType.fromJson(json['type'] as String) : null,
); }

final Omittable<RealtimekitStorageConfig?> storageConfig;

/// The type of output destination this layer is being exported to.
final RealtimekitTrackLayerOutputType? type;

/// The value with the schema default applied when absent.
RealtimekitTrackLayerOutputType get typeOrDefault { return type ?? RealtimekitTrackLayerOutputType.fromJson('REALTIMEKIT_BUCKET'); } 
Map<String, dynamic> toJson() { return {
  if (storageConfig.isPresent) 'storage_config': storageConfig.value?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'storage_config', 'type'}.contains(key)); } 
RealtimekitTrackLayerOutput copyWith({Omittable<RealtimekitStorageConfig?>? storageConfig, RealtimekitTrackLayerOutputType? Function()? type, }) { return RealtimekitTrackLayerOutput(
  storageConfig: storageConfig ?? this.storageConfig,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitTrackLayerOutput &&
          storageConfig == other.storageConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(storageConfig, type); } 
@override String toString() { return 'RealtimekitTrackLayerOutput(storageConfig: $storageConfig, type: $type)'; } 
 }

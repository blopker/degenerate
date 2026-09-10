// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_any.dart';import 'workers_kv_value.dart';@immutable final class WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest {const WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest({required this.value, this.metadata = const Omittable.absent(), });

factory WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest(
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] != null ? WorkersKvAny.fromJson(json['metadata']) : null) : const Omittable.absent(),
  value: WorkersKvValue.fromJson(json['value']),
); }

/// Associates arbitrary JSON data with a key/value pair.
final Omittable<WorkersKvAny?> metadata;

final WorkersKvValue value;

Map<String, dynamic> toJson() { return {
  if (metadata.isPresent) 'metadata': metadata.value?.toJson(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest copyWith({Omittable<WorkersKvAny?>? metadata, WorkersKvValue? value, }) { return WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest(
  metadata: metadata ?? this.metadata,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest &&
          metadata == other.metadata &&
          value == other.value; } 
@override int get hashCode { return Object.hash(metadata, value); } 
@override String toString() { return 'WorkersKvNamespaceWriteKeyValuePairWithMetadataRequest(metadata: $metadata, value: $value)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_any.dart';import 'workers_kv_expiration.dart';@immutable final class WorkersKvBulkGetResultWithMetadataValuesValue {const WorkersKvBulkGetResultWithMetadataValuesValue({required this.metadata, required this.value, this.expiration, });

factory WorkersKvBulkGetResultWithMetadataValuesValue.fromJson(Map<String, dynamic> json) {return WorkersKvBulkGetResultWithMetadataValuesValue(
  expiration: json['expiration'] != null ? WorkersKvExpiration.fromJson(json['expiration'] as num) : null,
  metadata: json['metadata'] != null ? WorkersKvAny.fromJson(json['metadata']) : null,
  value: json['value'] != null ? WorkersKvAny.fromJson(json['value']) : null,
);}

final WorkersKvExpiration? expiration;

/// The metadata associated with the key.
final WorkersKvAny? metadata;

/// The value associated with the key.
final WorkersKvAny? value;

Map<String, dynamic> toJson() {return {
  if (expiration != null) 'expiration': expiration?.toJson(),
  'metadata': metadata?.toJson(),
  'value': value?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('metadata') &&
      json.containsKey('value');}
WorkersKvBulkGetResultWithMetadataValuesValue copyWith({WorkersKvExpiration? Function()? expiration, WorkersKvAny? Function()? metadata, WorkersKvAny? Function()? value, }) {return WorkersKvBulkGetResultWithMetadataValuesValue(
  expiration: expiration != null ? expiration() : this.expiration,
  metadata: metadata != null ? metadata() : this.metadata,
  value: value != null ? value() : this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersKvBulkGetResultWithMetadataValuesValue &&
          expiration == other.expiration &&
          metadata == other.metadata &&
          value == other.value;}
@override int get hashCode {return Object.hash(expiration, metadata, value);}
@override String toString() {return 'WorkersKvBulkGetResultWithMetadataValuesValue(expiration: $expiration, metadata: $metadata, value: $value)';}
}

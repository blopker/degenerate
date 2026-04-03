// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_bulk_get_result_with_metadata_values_value.dart';@immutable final class WorkersKvBulkGetResultWithMetadata {const WorkersKvBulkGetResultWithMetadata({this.values});

factory WorkersKvBulkGetResultWithMetadata.fromJson(Map<String, dynamic> json) { return WorkersKvBulkGetResultWithMetadata(
  values: (json['values'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, WorkersKvBulkGetResultWithMetadataValuesValue.fromJson(v as Map<String, dynamic>))),
); }

/// Requested keys are paired with their values and metadata in an object.
final Map<String,WorkersKvBulkGetResultWithMetadataValuesValue?>? values;

Map<String, dynamic> toJson() { return {
  if (values != null) 'values': values?.map((k, v) => MapEntry(k, v?.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'values'}.contains(key)); } 
WorkersKvBulkGetResultWithMetadata copyWith({Map<String, WorkersKvBulkGetResultWithMetadataValuesValue> Function()? values}) { return WorkersKvBulkGetResultWithMetadata(
  values: values != null ? values() : this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvBulkGetResultWithMetadata &&
          values == other.values; } 
@override int get hashCode { return values.hashCode; } 
@override String toString() { return 'WorkersKvBulkGetResultWithMetadata(values: $values)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'batch_errors_data.dart';@immutable final class BatchErrors {const BatchErrors({this.object, this.data, });

factory BatchErrors.fromJson(Map<String, dynamic> json) { return BatchErrors(
  object: json['object'] as String?,
  data: (json['data'] as List<dynamic>?)?.map((e) => BatchErrorsData.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The object type, which is always `list`.
final String? object;

final List<BatchErrorsData>? data;

Map<String, dynamic> toJson() { return {
  'object': ?object,
  if (data != null) 'data': data?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'object', 'data'}.contains(key)); } 
BatchErrors copyWith({String Function()? object, List<BatchErrorsData> Function()? data, }) { return BatchErrors(
  object: object != null ? object() : this.object,
  data: data != null ? data() : this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BatchErrors &&
          object == other.object &&
          listEquals(data, other.data); } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data ?? const [])); } 
@override String toString() { return 'BatchErrors(object: $object, data: $data)'; } 
 }

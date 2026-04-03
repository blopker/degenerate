// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_response_errors.dart';import 'brapi_post_snapshot_response_meta.dart';import 'brapi_post_snapshot_response_result.dart';@immutable final class BrapiPostSnapshotResponse {const BrapiPostSnapshotResponse({required this.meta, required this.success, this.errors, this.result, });

factory BrapiPostSnapshotResponse.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotResponse(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  meta: BrapiPostSnapshotResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
  result: json['result'] != null ? BrapiPostSnapshotResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<BrapiPostSnapshotResponseErrors>? errors;

final BrapiPostSnapshotResponseMeta meta;

final BrapiPostSnapshotResponseResult? result;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'meta': meta.toJson(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('success') && json['success'] is bool; } 
BrapiPostSnapshotResponse copyWith({List<BrapiPostSnapshotResponseErrors> Function()? errors, BrapiPostSnapshotResponseMeta? meta, BrapiPostSnapshotResponseResult Function()? result, bool? success, }) { return BrapiPostSnapshotResponse(
  errors: errors != null ? errors() : this.errors,
  meta: meta ?? this.meta,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotResponse &&
          listEquals(errors, other.errors) &&
          meta == other.meta &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), meta, result, success); } 
@override String toString() { return 'BrapiPostSnapshotResponse(errors: $errors, meta: $meta, result: $result, success: $success)'; } 
 }

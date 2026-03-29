// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_response429_errors.dart';final class BrapiPostSnapshotResponse429 {const BrapiPostSnapshotResponse429({this.errors, required this.success, });

factory BrapiPostSnapshotResponse429.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotResponse429(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotResponse429Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostSnapshotResponse429Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostSnapshotResponse429 copyWith({List<BrapiPostSnapshotResponse429Errors> Function()? errors, bool? success, }) { return BrapiPostSnapshotResponse429(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotResponse429 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostSnapshotResponse429(errors: $errors, success: $success)'; } 
 }

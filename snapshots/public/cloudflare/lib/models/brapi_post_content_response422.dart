// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_response422_errors.dart';@immutable final class BrapiPostContentResponse422 {const BrapiPostContentResponse422({required this.success, this.errors, });

factory BrapiPostContentResponse422.fromJson(Map<String, dynamic> json) { return BrapiPostContentResponse422(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostContentResponse422Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostContentResponse422Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostContentResponse422 copyWith({List<BrapiPostContentResponse422Errors> Function()? errors, bool? success, }) { return BrapiPostContentResponse422(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentResponse422 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostContentResponse422(errors: $errors, success: $success)'; } 
 }

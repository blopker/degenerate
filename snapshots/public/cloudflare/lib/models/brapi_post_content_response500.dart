// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_response500_errors.dart';final class BrapiPostContentResponse500 {const BrapiPostContentResponse500({this.errors, required this.success, });

factory BrapiPostContentResponse500.fromJson(Map<String, dynamic> json) { return BrapiPostContentResponse500(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostContentResponse500Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostContentResponse500Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostContentResponse500 copyWith({List<BrapiPostContentResponse500Errors> Function()? errors, bool? success, }) { return BrapiPostContentResponse500(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentResponse500 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostContentResponse500(errors: $errors, success: $success)'; } 
 }

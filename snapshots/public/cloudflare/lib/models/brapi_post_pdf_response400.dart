// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_pdf_response400_errors.dart';final class BrapiPostPdfResponse400 {const BrapiPostPdfResponse400({this.errors, required this.success, });

factory BrapiPostPdfResponse400.fromJson(Map<String, dynamic> json) { return BrapiPostPdfResponse400(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostPdfResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostPdfResponse400Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostPdfResponse400 copyWith({List<BrapiPostPdfResponse400Errors> Function()? errors, bool? success, }) { return BrapiPostPdfResponse400(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostPdfResponse400 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostPdfResponse400(errors: $errors, success: $success)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_response429_errors.dart';@immutable final class BrapiPostLinksResponse429 {const BrapiPostLinksResponse429({required this.success, this.errors, });

factory BrapiPostLinksResponse429.fromJson(Map<String, dynamic> json) { return BrapiPostLinksResponse429(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostLinksResponse429Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostLinksResponse429Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostLinksResponse429 copyWith({List<BrapiPostLinksResponse429Errors> Function()? errors, bool? success, }) { return BrapiPostLinksResponse429(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostLinksResponse429 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostLinksResponse429(errors: $errors, success: $success)'; } 
 }

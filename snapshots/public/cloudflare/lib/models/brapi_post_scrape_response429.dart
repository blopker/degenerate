// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_scrape_response429_errors.dart';final class BrapiPostScrapeResponse429 {const BrapiPostScrapeResponse429({this.errors, required this.success, });

factory BrapiPostScrapeResponse429.fromJson(Map<String, dynamic> json) { return BrapiPostScrapeResponse429(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => BrapiPostScrapeResponse429Errors.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<BrapiPostScrapeResponse429Errors>? errors;

/// Response status
final bool success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
BrapiPostScrapeResponse429 copyWith({List<BrapiPostScrapeResponse429Errors> Function()? errors, bool? success, }) { return BrapiPostScrapeResponse429(
  errors: errors != null ? errors() : this.errors,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostScrapeResponse429 &&
          listEquals(errors, other.errors) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), success); } 
@override String toString() { return 'BrapiPostScrapeResponse429(errors: $errors, success: $success)'; } 
 }

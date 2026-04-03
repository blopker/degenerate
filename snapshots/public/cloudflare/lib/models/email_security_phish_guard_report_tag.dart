// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityPhishGuardReportTag {const EmailSecurityPhishGuardReportTag({required this.category, required this.value, });

factory EmailSecurityPhishGuardReportTag.fromJson(Map<String, dynamic> json) { return EmailSecurityPhishGuardReportTag(
  category: json['category'] as String,
  value: json['value'] as String,
); }

final String category;

final String value;

Map<String, dynamic> toJson() { return {
  'category': category,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('category') && json['category'] is String &&
      json.containsKey('value') && json['value'] is String; } 
EmailSecurityPhishGuardReportTag copyWith({String? category, String? value, }) { return EmailSecurityPhishGuardReportTag(
  category: category ?? this.category,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityPhishGuardReportTag &&
          category == other.category &&
          value == other.value; } 
@override int get hashCode { return Object.hash(category, value); } 
@override String toString() { return 'EmailSecurityPhishGuardReportTag(category: $category, value: $value)'; } 
 }

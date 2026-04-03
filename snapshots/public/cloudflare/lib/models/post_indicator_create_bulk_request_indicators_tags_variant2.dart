// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIndicatorCreateBulkRequestIndicatorsTagsVariant2 {const PostIndicatorCreateBulkRequestIndicatorsTagsVariant2({required this.value, this.categoryName, });

factory PostIndicatorCreateBulkRequestIndicatorsTagsVariant2.fromJson(Map<String, dynamic> json) { return PostIndicatorCreateBulkRequestIndicatorsTagsVariant2(
  categoryName: json['categoryName'] as String?,
  value: json['value'] as String,
); }

final String? categoryName;

final String value;

Map<String, dynamic> toJson() { return {
  'categoryName': ?categoryName,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value') && json['value'] is String; } 
PostIndicatorCreateBulkRequestIndicatorsTagsVariant2 copyWith({String Function()? categoryName, String? value, }) { return PostIndicatorCreateBulkRequestIndicatorsTagsVariant2(
  categoryName: categoryName != null ? categoryName() : this.categoryName,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIndicatorCreateBulkRequestIndicatorsTagsVariant2 &&
          categoryName == other.categoryName &&
          value == other.value; } 
@override int get hashCode { return Object.hash(categoryName, value); } 
@override String toString() { return 'PostIndicatorCreateBulkRequestIndicatorsTagsVariant2(categoryName: $categoryName, value: $value)'; } 
 }

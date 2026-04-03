// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTagIndicatorsListResponseIndicatorsTags {const GetTagIndicatorsListResponseIndicatorsTags({this.categoryName, this.uuid, this.value, });

factory GetTagIndicatorsListResponseIndicatorsTags.fromJson(Map<String, dynamic> json) { return GetTagIndicatorsListResponseIndicatorsTags(
  categoryName: json['categoryName'] as String?,
  uuid: json['uuid'] as String?,
  value: json['value'] as String?,
); }

final String? categoryName;

final String? uuid;

final String? value;

Map<String, dynamic> toJson() { return {
  'categoryName': ?categoryName,
  'uuid': ?uuid,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'categoryName', 'uuid', 'value'}.contains(key)); } 
GetTagIndicatorsListResponseIndicatorsTags copyWith({String Function()? categoryName, String Function()? uuid, String Function()? value, }) { return GetTagIndicatorsListResponseIndicatorsTags(
  categoryName: categoryName != null ? categoryName() : this.categoryName,
  uuid: uuid != null ? uuid() : this.uuid,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTagIndicatorsListResponseIndicatorsTags &&
          categoryName == other.categoryName &&
          uuid == other.uuid &&
          value == other.value; } 
@override int get hashCode { return Object.hash(categoryName, uuid, value); } 
@override String toString() { return 'GetTagIndicatorsListResponseIndicatorsTags(categoryName: $categoryName, uuid: $uuid, value: $value)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostRadarValueListItemsRequest {const PostRadarValueListItemsRequest({this.expand, required this.value, required this.valueList, });

factory PostRadarValueListItemsRequest.fromJson(Map<String, dynamic> json) { return PostRadarValueListItemsRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  value: json['value'] as String,
  valueList: json['value_list'] as String,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The value of the item (whose type must match the type of the parent value list).
final String value;

/// The identifier of the value list which the created item will be added to.
final String valueList;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'value': value,
  'value_list': valueList,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value') && json['value'] is String &&
      json.containsKey('value_list') && json['value_list'] is String; } 
PostRadarValueListItemsRequest copyWith({List<String> Function()? expand, String? value, String? valueList, }) { return PostRadarValueListItemsRequest(
  expand: expand != null ? expand() : this.expand,
  value: value ?? this.value,
  valueList: valueList ?? this.valueList,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarValueListItemsRequest &&
          listEquals(expand, other.expand) &&
          value == other.value &&
          valueList == other.valueList; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), value, valueList); } 
@override String toString() { return 'PostRadarValueListItemsRequest(expand: $expand, value: $value, valueList: $valueList)'; } 
 }

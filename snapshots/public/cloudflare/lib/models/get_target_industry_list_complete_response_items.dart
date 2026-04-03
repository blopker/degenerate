// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTargetIndustryListCompleteResponseItems {const GetTargetIndustryListCompleteResponseItems({required this.type});

factory GetTargetIndustryListCompleteResponseItems.fromJson(Map<String, dynamic> json) { return GetTargetIndustryListCompleteResponseItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
GetTargetIndustryListCompleteResponseItems copyWith({String? type}) { return GetTargetIndustryListCompleteResponseItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTargetIndustryListCompleteResponseItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'GetTargetIndustryListCompleteResponseItems(type: $type)'; } 
 }

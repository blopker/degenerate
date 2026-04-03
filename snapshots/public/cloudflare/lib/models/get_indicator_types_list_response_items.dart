// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetIndicatorTypesListResponseItems {const GetIndicatorTypesListResponseItems({required this.type});

factory GetIndicatorTypesListResponseItems.fromJson(Map<String, dynamic> json) { return GetIndicatorTypesListResponseItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
GetIndicatorTypesListResponseItems copyWith({String? type}) { return GetIndicatorTypesListResponseItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetIndicatorTypesListResponseItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'GetIndicatorTypesListResponseItems(type: $type)'; } 
 }

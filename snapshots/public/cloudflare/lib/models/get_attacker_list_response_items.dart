// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAttackerListResponseItems {const GetAttackerListResponseItems({required this.type});

factory GetAttackerListResponseItems.fromJson(Map<String, dynamic> json) { return GetAttackerListResponseItems(
  type: json['type'] as String,
); }

final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
GetAttackerListResponseItems copyWith({String? type}) { return GetAttackerListResponseItems(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAttackerListResponseItems &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'GetAttackerListResponseItems(type: $type)'; } 
 }

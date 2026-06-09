// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetSingleResponse {const GetSingleResponse({required this.value});

factory GetSingleResponse.fromJson(Map<String, dynamic> json) { return GetSingleResponse(
  value: json['value'] as String,
); }

final String value;

Map<String, dynamic> toJson() { return {
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value') && json['value'] is String; } 
GetSingleResponse copyWith({String? value}) { return GetSingleResponse(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSingleResponse &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetSingleResponse(value: $value)'; } 
 }

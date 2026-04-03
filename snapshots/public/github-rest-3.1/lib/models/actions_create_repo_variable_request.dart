// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsCreateRepoVariableRequest {const ActionsCreateRepoVariableRequest({required this.name, required this.value, });

factory ActionsCreateRepoVariableRequest.fromJson(Map<String, dynamic> json) { return ActionsCreateRepoVariableRequest(
  name: json['name'] as String,
  value: json['value'] as String,
); }

/// The name of the variable.
final String name;

/// The value of the variable.
final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
ActionsCreateRepoVariableRequest copyWith({String? name, String? value, }) { return ActionsCreateRepoVariableRequest(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCreateRepoVariableRequest &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'ActionsCreateRepoVariableRequest(name: $name, value: $value)'; } 
 }

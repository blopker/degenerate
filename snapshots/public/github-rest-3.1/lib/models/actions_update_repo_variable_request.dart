// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsUpdateRepoVariableRequest {const ActionsUpdateRepoVariableRequest({this.name, this.value, });

factory ActionsUpdateRepoVariableRequest.fromJson(Map<String, dynamic> json) { return ActionsUpdateRepoVariableRequest(
  name: json['name'] as String?,
  value: json['value'] as String?,
); }

/// The name of the variable.
final String? name;

/// The value of the variable.
final String? value;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'value'}.contains(key)); } 
ActionsUpdateRepoVariableRequest copyWith({String Function()? name, String Function()? value, }) { return ActionsUpdateRepoVariableRequest(
  name: name != null ? name() : this.name,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsUpdateRepoVariableRequest &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'ActionsUpdateRepoVariableRequest(name: $name, value: $value)'; } 
 }

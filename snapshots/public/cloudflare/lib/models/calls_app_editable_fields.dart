// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_name.dart';@immutable final class CallsAppEditableFields {const CallsAppEditableFields({this.name});

factory CallsAppEditableFields.fromJson(Map<String, dynamic> json) { return CallsAppEditableFields(
  name: json['name'] != null ? CallsName.fromJson(json['name'] as String) : null,
); }

final CallsName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
CallsAppEditableFields copyWith({CallsName Function()? name}) { return CallsAppEditableFields(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsAppEditableFields &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'CallsAppEditableFields(name: $name)'; } 
 }

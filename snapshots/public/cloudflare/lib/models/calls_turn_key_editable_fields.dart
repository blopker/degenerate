// GENERATED CODE - DO NOT MODIFY BY HAND

import 'calls_turn_key_name.dart';final class CallsTurnKeyEditableFields {const CallsTurnKeyEditableFields({this.name});

factory CallsTurnKeyEditableFields.fromJson(Map<String, dynamic> json) { return CallsTurnKeyEditableFields(
  name: json['name'] != null ? CallsTurnKeyName.fromJson(json['name'] as String) : null,
); }

final CallsTurnKeyName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CallsTurnKeyEditableFields copyWith({CallsTurnKeyName Function()? name}) { return CallsTurnKeyEditableFields(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeyEditableFields &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'CallsTurnKeyEditableFields(name: $name)'; } 
 }

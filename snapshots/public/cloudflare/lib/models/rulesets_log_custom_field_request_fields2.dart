// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The raw request field to log.
@immutable final class RulesetsLogCustomFieldRequestFields2 {const RulesetsLogCustomFieldRequestFields2({required this.name});

factory RulesetsLogCustomFieldRequestFields2.fromJson(Map<String, dynamic> json) { return RulesetsLogCustomFieldRequestFields2(
  name: json['name'] as String,
); }

/// The name of the header.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
RulesetsLogCustomFieldRequestFields2 copyWith({String? name}) { return RulesetsLogCustomFieldRequestFields2(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsLogCustomFieldRequestFields2 &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'RulesetsLogCustomFieldRequestFields2(name: $name)'; } 
 }

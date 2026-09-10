// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A ruleset object.
@immutable final class RulesetsRulesetRequest {const RulesetsRulesetRequest({this.description, this.name, });

factory RulesetsRulesetRequest.fromJson(Map<String, dynamic> json) { return RulesetsRulesetRequest(
  description: json['description'] as String?,
  name: json['name'] as String?,
); }

/// An informative description of the ruleset.
final String? description;

/// The human-readable name of the ruleset.
final String? name;

/// The value with the schema default applied when absent.
String get descriptionOrDefault { return description ?? ''; } 
Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'name'}.contains(key)); } 
RulesetsRulesetRequest copyWith({String? Function()? description, String? Function()? name, }) { return RulesetsRulesetRequest(
  description: description != null ? description() : this.description,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsRulesetRequest &&
          description == other.description &&
          name == other.name; } 
@override int get hashCode { return Object.hash(description, name); } 
@override String toString() { return 'RulesetsRulesetRequest(description: $description, name: $name)'; } 
 }

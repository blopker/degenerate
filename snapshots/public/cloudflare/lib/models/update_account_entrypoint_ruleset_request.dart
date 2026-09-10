// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_request_rule_request.dart';@immutable final class UpdateAccountEntrypointRulesetRequest {const UpdateAccountEntrypointRulesetRequest({this.description, this.name, this.rules, });

factory UpdateAccountEntrypointRulesetRequest.fromJson(Map<String, dynamic> json) { return UpdateAccountEntrypointRulesetRequest(
  description: json['description'] as String?,
  name: json['name'] as String?,
  rules: (json['rules'] as List<dynamic>?)?.map((e) => RulesetsRequestRuleRequest.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// An informative description of the ruleset.
final String? description;

/// The human-readable name of the ruleset.
final String? name;

/// The list of rules in the ruleset.
final List<RulesetsRequestRuleRequest>? rules;

/// The value with the schema default applied when absent.
String get descriptionOrDefault { return description ?? ''; } 
Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': ?name,
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'name', 'rules'}.contains(key)); } 
UpdateAccountEntrypointRulesetRequest copyWith({String? Function()? description, String? Function()? name, List<RulesetsRequestRuleRequest>? Function()? rules, }) { return UpdateAccountEntrypointRulesetRequest(
  description: description != null ? description() : this.description,
  name: name != null ? name() : this.name,
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateAccountEntrypointRulesetRequest &&
          description == other.description &&
          name == other.name &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hash(description, name, Object.hashAll(rules ?? const [])); } 
@override String toString() { return 'UpdateAccountEntrypointRulesetRequest(description: $description, name: $name, rules: $rules)'; } 
 }

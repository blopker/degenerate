// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'snippets_snippet_rules_request2.dart';/// Define a snippet rules object.
@immutable final class UpdateZoneSnippetRulesRequest {const UpdateZoneSnippetRulesRequest({required this.rules});

factory UpdateZoneSnippetRulesRequest.fromJson(Map<String, dynamic> json) {return UpdateZoneSnippetRulesRequest(
  rules: (json['rules'] as List<dynamic>).map((e) => SnippetsSnippetRulesRequest2.fromJson(e as Map<String, dynamic>)).toList(),
);}

/// Lists snippet rules.
final List<SnippetsSnippetRulesRequest2> rules;

Map<String, dynamic> toJson() {return {
  'rules': rules.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('rules');}
UpdateZoneSnippetRulesRequest copyWith({List<SnippetsSnippetRulesRequest2>? rules}) {return UpdateZoneSnippetRulesRequest(
  rules: rules ?? this.rules,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is UpdateZoneSnippetRulesRequest &&
          listEquals(rules, other.rules);}
@override int get hashCode {return Object.hashAll(rules).hashCode;}
@override String toString() {return 'UpdateZoneSnippetRulesRequest(rules: $rules)';}
}

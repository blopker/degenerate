// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The response content.
extension type const RulesetsServeErrorContent(String value) {
factory RulesetsServeErrorContent.fromJson(String json) => RulesetsServeErrorContent(json);

String toJson() => value;

}
@immutable final class ActionParametersContent {const ActionParametersContent({required this.content});

factory ActionParametersContent.fromJson(Map<String, dynamic> json) { return ActionParametersContent(
  content: RulesetsServeErrorContent.fromJson(json['content'] as String),
); }

/// The response content.
final RulesetsServeErrorContent content;

Map<String, dynamic> toJson() { return {
  'content': content.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content'); } 
ActionParametersContent copyWith({RulesetsServeErrorContent? content}) { return ActionParametersContent(
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionParametersContent &&
          content == other.content; } 
@override int get hashCode { return content.hashCode; } 
@override String toString() { return 'ActionParametersContent(content: $content)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_serve_error_content.dart';@immutable final class ActionParametersContent2 {const ActionParametersContent2({required this.content});

factory ActionParametersContent2.fromJson(Map<String, dynamic> json) {return ActionParametersContent2(
  content: RulesetsServeErrorContent.fromJson(json['content'] as String),
);}

/// The response content.
final RulesetsServeErrorContent content;

Map<String, dynamic> toJson() {return {
  'content': content.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('content');}
ActionParametersContent2 copyWith({RulesetsServeErrorContent? content}) {return ActionParametersContent2(
  content: content ?? this.content,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ActionParametersContent2 &&
          content == other.content;}
@override int get hashCode {return content.hashCode;}
@override String toString() {return 'ActionParametersContent2(content: $content)';}
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51ChatTemplateKwargs {const Messages51ChatTemplateKwargs({this.clearThinking, this.enableThinking, });

factory Messages51ChatTemplateKwargs.fromJson(Map<String, dynamic> json) { return Messages51ChatTemplateKwargs(
  clearThinking: json['clear_thinking'] as bool?,
  enableThinking: json['enable_thinking'] as bool?,
); }

/// If false, preserves reasoning context between turns.
final bool? clearThinking;

/// Wether to enable reasoning, enabled by default.
final bool? enableThinking;

/// The value with the schema default applied when absent.
bool get clearThinkingOrDefault { return clearThinking ?? false; } 
/// The value with the schema default applied when absent.
bool get enableThinkingOrDefault { return enableThinking ?? true; } 
Map<String, dynamic> toJson() { return {
  'clear_thinking': ?clearThinking,
  'enable_thinking': ?enableThinking,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'clear_thinking', 'enable_thinking'}.contains(key)); } 
Messages51ChatTemplateKwargs copyWith({bool? Function()? clearThinking, bool? Function()? enableThinking, }) { return Messages51ChatTemplateKwargs(
  clearThinking: clearThinking != null ? clearThinking() : this.clearThinking,
  enableThinking: enableThinking != null ? enableThinking() : this.enableThinking,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ChatTemplateKwargs &&
          clearThinking == other.clearThinking &&
          enableThinking == other.enableThinking; } 
@override int get hashCode { return Object.hash(clearThinking, enableThinking); } 
@override String toString() { return 'Messages51ChatTemplateKwargs(clearThinking: $clearThinking, enableThinking: $enableThinking)'; } 
 }

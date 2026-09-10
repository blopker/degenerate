// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt43ChatTemplateKwargs {const Prompt43ChatTemplateKwargs({this.clearThinking, this.enableThinking, });

factory Prompt43ChatTemplateKwargs.fromJson(Map<String, dynamic> json) { return Prompt43ChatTemplateKwargs(
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
Prompt43ChatTemplateKwargs copyWith({bool? Function()? clearThinking, bool? Function()? enableThinking, }) { return Prompt43ChatTemplateKwargs(
  clearThinking: clearThinking != null ? clearThinking() : this.clearThinking,
  enableThinking: enableThinking != null ? enableThinking() : this.enableThinking,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43ChatTemplateKwargs &&
          clearThinking == other.clearThinking &&
          enableThinking == other.enableThinking; } 
@override int get hashCode { return Object.hash(clearThinking, enableThinking); } 
@override String toString() { return 'Prompt43ChatTemplateKwargs(clearThinking: $clearThinking, enableThinking: $enableThinking)'; } 
 }

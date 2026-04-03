// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Constrains effort on reasoning for
/// [reasoning models](https://platform.openai.com/docs/guides/reasoning).
/// Currently supported values are `none`, `minimal`, `low`, `medium`, `high`, and `xhigh`. Reducing
/// reasoning effort can result in faster responses and fewer tokens used
/// on reasoning in a response.
/// 
/// - `gpt-5.1` defaults to `none`, which does not perform reasoning. The supported reasoning values for `gpt-5.1` are `none`, `low`, `medium`, and `high`. Tool calls are supported for all reasoning values in gpt-5.1.
/// - All models before `gpt-5.1` default to `medium` reasoning effort, and do not support `none`.
/// - The `gpt-5-pro` model defaults to (and only supports) `high` reasoning effort.
/// - `xhigh` is supported for all models after `gpt-5.1-codex-max`.
/// 
@immutable final class ReasoningEffort {const ReasoningEffort._(this.value);

factory ReasoningEffort.fromJson(String json) { return switch (json) {
  'none' => none,
  'minimal' => minimal,
  'low' => low,
  'medium' => medium,
  'high' => high,
  'xhigh' => xhigh,
  _ => ReasoningEffort._(json),
}; }

static const ReasoningEffort none = ReasoningEffort._('none');

static const ReasoningEffort minimal = ReasoningEffort._('minimal');

static const ReasoningEffort low = ReasoningEffort._('low');

static const ReasoningEffort medium = ReasoningEffort._('medium');

static const ReasoningEffort high = ReasoningEffort._('high');

static const ReasoningEffort xhigh = ReasoningEffort._('xhigh');

static const List<ReasoningEffort> values = [none, minimal, low, medium, high, xhigh];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReasoningEffort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReasoningEffort($value)'; } 
 }

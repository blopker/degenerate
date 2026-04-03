// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetRunStepInclude {const GetRunStepInclude._(this.value);

factory GetRunStepInclude.fromJson(String json) { return switch (json) {
  'step_details.tool_calls[*].file_search.results[*].content' => stepDetailsToolCallsFileSearchResultsContent,
  _ => GetRunStepInclude._(json),
}; }

static const GetRunStepInclude stepDetailsToolCallsFileSearchResultsContent = GetRunStepInclude._('step_details.tool_calls[*].file_search.results[*].content');

static const List<GetRunStepInclude> values = [stepDetailsToolCallsFileSearchResultsContent];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetRunStepInclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetRunStepInclude($value)'; } 
 }

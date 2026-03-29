// GENERATED CODE - DO NOT MODIFY BY HAND

/// Constrains effort on reasoning for reasoning models. Currently supported values are low, medium, and high. Reducing reasoning effort can result in faster responses and fewer tokens used on reasoning in a response.
final class ResponsesAsyncRequestsReasoningEffort {const ResponsesAsyncRequestsReasoningEffort._(this.value);

factory ResponsesAsyncRequestsReasoningEffort.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  _ => ResponsesAsyncRequestsReasoningEffort._(json),
}; }

static const ResponsesAsyncRequestsReasoningEffort low = ResponsesAsyncRequestsReasoningEffort._('low');

static const ResponsesAsyncRequestsReasoningEffort medium = ResponsesAsyncRequestsReasoningEffort._('medium');

static const ResponsesAsyncRequestsReasoningEffort high = ResponsesAsyncRequestsReasoningEffort._('high');

static const List<ResponsesAsyncRequestsReasoningEffort> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesAsyncRequestsReasoningEffort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponsesAsyncRequestsReasoningEffort($value)'; } 
 }
/// A summary of the reasoning performed by the model. This can be useful for debugging and understanding the model's reasoning process. One of auto, concise, or detailed.
final class ResponsesAsyncRequestsReasoningSummary {const ResponsesAsyncRequestsReasoningSummary._(this.value);

factory ResponsesAsyncRequestsReasoningSummary.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'concise' => concise,
  'detailed' => detailed,
  _ => ResponsesAsyncRequestsReasoningSummary._(json),
}; }

static const ResponsesAsyncRequestsReasoningSummary auto = ResponsesAsyncRequestsReasoningSummary._('auto');

static const ResponsesAsyncRequestsReasoningSummary concise = ResponsesAsyncRequestsReasoningSummary._('concise');

static const ResponsesAsyncRequestsReasoningSummary detailed = ResponsesAsyncRequestsReasoningSummary._('detailed');

static const List<ResponsesAsyncRequestsReasoningSummary> values = [auto, concise, detailed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesAsyncRequestsReasoningSummary && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponsesAsyncRequestsReasoningSummary($value)'; } 
 }
final class ResponsesAsyncRequestsReasoning {const ResponsesAsyncRequestsReasoning({this.effort, this.summary, });

factory ResponsesAsyncRequestsReasoning.fromJson(Map<String, dynamic> json) { return ResponsesAsyncRequestsReasoning(
  effort: json['effort'] != null ? ResponsesAsyncRequestsReasoningEffort.fromJson(json['effort'] as String) : null,
  summary: json['summary'] != null ? ResponsesAsyncRequestsReasoningSummary.fromJson(json['summary'] as String) : null,
); }

/// Constrains effort on reasoning for reasoning models. Currently supported values are low, medium, and high. Reducing reasoning effort can result in faster responses and fewer tokens used on reasoning in a response.
final ResponsesAsyncRequestsReasoningEffort? effort;

/// A summary of the reasoning performed by the model. This can be useful for debugging and understanding the model's reasoning process. One of auto, concise, or detailed.
final ResponsesAsyncRequestsReasoningSummary? summary;

Map<String, dynamic> toJson() { return {
  if (effort != null) 'effort': effort?.toJson(),
  if (summary != null) 'summary': summary?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'effort', 'summary'}.contains(key)); } 
ResponsesAsyncRequestsReasoning copyWith({ResponsesAsyncRequestsReasoningEffort Function()? effort, ResponsesAsyncRequestsReasoningSummary Function()? summary, }) { return ResponsesAsyncRequestsReasoning(
  effort: effort != null ? effort() : this.effort,
  summary: summary != null ? summary() : this.summary,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponsesAsyncRequestsReasoning &&
          effort == other.effort &&
          summary == other.summary; } 
@override int get hashCode { return Object.hash(effort, summary); } 
@override String toString() { return 'ResponsesAsyncRequestsReasoning(effort: $effort, summary: $summary)'; } 
 }

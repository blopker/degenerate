// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not_exists' = boost chunks that lack the field. Optional ��� defaults to 'asc' for numeric fields, 'exists' for text/boolean fields.
@immutable final class AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection {const AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection._(this.value);

factory AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  'exists' => exists,
  'not_exists' => notExists,
  _ => AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection._(json),
}; }

static const AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection asc = AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection._('asc');

static const AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection desc = AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection._('desc');

static const AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection exists = AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection._('exists');

static const AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection notExists = AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection._('not_exists');

static const List<AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection> values = [asc, desc, exists, notExists];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection($value)'; } 
 }
@immutable final class AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy {const AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy({required this.field, this.direction, });

factory AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy(
  direction: json['direction'] != null ? AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection.fromJson(json['direction'] as String) : null,
  field: json['field'] as String,
); }

/// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not_exists' = boost chunks that lack the field. Optional ��� defaults to 'asc' for numeric fields, 'exists' for text/boolean fields.
final AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection? direction;

/// Metadata field name to boost by. Use 'timestamp' for document freshness, or any custom_metadata field. Numeric fields support asc/desc directions; text/boolean fields support exists/not_exists.
final String field;

Map<String, dynamic> toJson() { return {
  if (direction != null) 'direction': direction?.toJson(),
  'field': field,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('field') && json['field'] is String; } 
AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy copyWith({AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostByDirection Function()? direction, String? field, }) { return AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy(
  direction: direction != null ? direction() : this.direction,
  field: field ?? this.field,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy &&
          direction == other.direction &&
          field == other.field; } 
@override int get hashCode { return Object.hash(direction, field); } 
@override String toString() { return 'AiSearchInstanceChatCompletionRequestAiSearchOptionsRetrievalBoostBy(direction: $direction, field: $field)'; } 
 }

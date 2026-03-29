// GENERATED CODE - DO NOT MODIFY BY HAND

/// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not_exists' = boost chunks that lack the field. Optional ��� defaults to 'asc' for numeric fields, 'exists' for text/boolean fields.
final class AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection {const AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection._(this.value);

factory AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  'exists' => exists,
  'not_exists' => notExists,
  _ => AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection._(json),
}; }

static const AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection asc = AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection._('asc');

static const AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection desc = AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection._('desc');

static const AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection exists = AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection._('exists');

static const AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection notExists = AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection._('not_exists');

static const List<AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection> values = [asc, desc, exists, notExists];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection($value)'; } 
 }
final class AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy {const AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy({this.direction, required this.field, });

factory AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy.fromJson(Map<String, dynamic> json) { return AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy(
  direction: json['direction'] != null ? AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection.fromJson(json['direction'] as String) : null,
  field: json['field'] as String,
); }

/// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not_exists' = boost chunks that lack the field. Optional ��� defaults to 'asc' for numeric fields, 'exists' for text/boolean fields.
final AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection? direction;

/// Metadata field name to boost by. Use 'timestamp' for document freshness, or any custom_metadata field. Numeric fields support asc/desc directions; text/boolean fields support exists/not_exists.
final String field;

Map<String, dynamic> toJson() { return {
  if (direction != null) 'direction': direction?.toJson(),
  'field': field,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('field') && json['field'] is String; } 
AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy copyWith({AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostByDirection Function()? direction, String? field, }) { return AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy(
  direction: direction != null ? direction() : this.direction,
  field: field ?? this.field,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy &&
          direction == other.direction &&
          field == other.field; } 
@override int get hashCode { return Object.hash(direction, field); } 
@override String toString() { return 'AiSearchInstanceSearchRequestAiSearchOptionsRetrievalBoostBy(direction: $direction, field: $field)'; } 
 }

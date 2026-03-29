// GENERATED CODE - DO NOT MODIFY BY HAND

/// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not_exists' = boost chunks that lack the field. Optional ��� defaults to 'asc' for numeric fields, 'exists' for text/boolean fields.
final class AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection {const AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection._(this.value);

factory AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  'exists' => exists,
  'not_exists' => notExists,
  _ => AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection._(json),
}; }

static const AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection asc = AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection._('asc');

static const AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection desc = AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection._('desc');

static const AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection exists = AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection._('exists');

static const AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection notExists = AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection._('not_exists');

static const List<AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection> values = [asc, desc, exists, notExists];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection($value)'; } 
 }
final class AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy {const AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy({this.direction, required this.field, });

factory AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy(
  direction: json['direction'] != null ? AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection.fromJson(json['direction'] as String) : null,
  field: json['field'] as String,
); }

/// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not_exists' = boost chunks that lack the field. Optional ��� defaults to 'asc' for numeric fields, 'exists' for text/boolean fields.
final AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection? direction;

/// Metadata field name to boost by. Use 'timestamp' for document freshness, or any custom_metadata field. Numeric fields support asc/desc directions; text/boolean fields support exists/not_exists.
final String field;

Map<String, dynamic> toJson() { return {
  if (direction != null) 'direction': direction?.toJson(),
  'field': field,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('field') && json['field'] is String; } 
AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy copyWith({AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostByDirection Function()? direction, String? field, }) { return AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy(
  direction: direction != null ? direction() : this.direction,
  field: field ?? this.field,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy &&
          direction == other.direction &&
          field == other.field; } 
@override int get hashCode { return Object.hash(direction, field); } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultRetrievalOptionsBoostBy(direction: $direction, field: $field)'; } 
 }

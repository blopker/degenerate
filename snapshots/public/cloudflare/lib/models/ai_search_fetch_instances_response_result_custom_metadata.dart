// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchFetchInstancesResponseResultCustomMetadataDataType {const AiSearchFetchInstancesResponseResultCustomMetadataDataType._(this.value);

factory AiSearchFetchInstancesResponseResultCustomMetadataDataType.fromJson(String json) { return switch (json) {
  'text' => text,
  'number' => number,
  'boolean' => boolean,
  _ => AiSearchFetchInstancesResponseResultCustomMetadataDataType._(json),
}; }

static const AiSearchFetchInstancesResponseResultCustomMetadataDataType text = AiSearchFetchInstancesResponseResultCustomMetadataDataType._('text');

static const AiSearchFetchInstancesResponseResultCustomMetadataDataType number = AiSearchFetchInstancesResponseResultCustomMetadataDataType._('number');

static const AiSearchFetchInstancesResponseResultCustomMetadataDataType boolean = AiSearchFetchInstancesResponseResultCustomMetadataDataType._('boolean');

static const List<AiSearchFetchInstancesResponseResultCustomMetadataDataType> values = [text, number, boolean];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchInstancesResponseResultCustomMetadataDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultCustomMetadataDataType($value)'; } 
 }
final class AiSearchFetchInstancesResponseResultCustomMetadata {const AiSearchFetchInstancesResponseResultCustomMetadata({required this.dataType, required this.fieldName, });

factory AiSearchFetchInstancesResponseResultCustomMetadata.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultCustomMetadata(
  dataType: AiSearchFetchInstancesResponseResultCustomMetadataDataType.fromJson(json['data_type'] as String),
  fieldName: json['field_name'] as String,
); }

final AiSearchFetchInstancesResponseResultCustomMetadataDataType dataType;

final String fieldName;

Map<String, dynamic> toJson() { return {
  'data_type': dataType.toJson(),
  'field_name': fieldName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data_type') &&
      json.containsKey('field_name') && json['field_name'] is String; } 
AiSearchFetchInstancesResponseResultCustomMetadata copyWith({AiSearchFetchInstancesResponseResultCustomMetadataDataType? dataType, String? fieldName, }) { return AiSearchFetchInstancesResponseResultCustomMetadata(
  dataType: dataType ?? this.dataType,
  fieldName: fieldName ?? this.fieldName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultCustomMetadata &&
          dataType == other.dataType &&
          fieldName == other.fieldName; } 
@override int get hashCode { return Object.hash(dataType, fieldName); } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultCustomMetadata(dataType: $dataType, fieldName: $fieldName)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchListInstancesResponseResultCustomMetadataDataType {const AiSearchListInstancesResponseResultCustomMetadataDataType._(this.value);

factory AiSearchListInstancesResponseResultCustomMetadataDataType.fromJson(String json) { return switch (json) {
  'text' => text,
  'number' => number,
  'boolean' => boolean,
  _ => AiSearchListInstancesResponseResultCustomMetadataDataType._(json),
}; }

static const AiSearchListInstancesResponseResultCustomMetadataDataType text = AiSearchListInstancesResponseResultCustomMetadataDataType._('text');

static const AiSearchListInstancesResponseResultCustomMetadataDataType number = AiSearchListInstancesResponseResultCustomMetadataDataType._('number');

static const AiSearchListInstancesResponseResultCustomMetadataDataType boolean = AiSearchListInstancesResponseResultCustomMetadataDataType._('boolean');

static const List<AiSearchListInstancesResponseResultCustomMetadataDataType> values = [text, number, boolean];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListInstancesResponseResultCustomMetadataDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultCustomMetadataDataType($value)'; } 
 }
@immutable final class AiSearchListInstancesResponseResultCustomMetadata {const AiSearchListInstancesResponseResultCustomMetadata({required this.dataType, required this.fieldName, });

factory AiSearchListInstancesResponseResultCustomMetadata.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultCustomMetadata(
  dataType: AiSearchListInstancesResponseResultCustomMetadataDataType.fromJson(json['data_type'] as String),
  fieldName: json['field_name'] as String,
); }

final AiSearchListInstancesResponseResultCustomMetadataDataType dataType;

final String fieldName;

Map<String, dynamic> toJson() { return {
  'data_type': dataType.toJson(),
  'field_name': fieldName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data_type') &&
      json.containsKey('field_name') && json['field_name'] is String; } 
AiSearchListInstancesResponseResultCustomMetadata copyWith({AiSearchListInstancesResponseResultCustomMetadataDataType? dataType, String? fieldName, }) { return AiSearchListInstancesResponseResultCustomMetadata(
  dataType: dataType ?? this.dataType,
  fieldName: fieldName ?? this.fieldName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultCustomMetadata &&
          dataType == other.dataType &&
          fieldName == other.fieldName; } 
@override int get hashCode { return Object.hash(dataType, fieldName); } 
@override String toString() { return 'AiSearchListInstancesResponseResultCustomMetadata(dataType: $dataType, fieldName: $fieldName)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchDeleteInstancesResponseResultCustomMetadataDataType {const AiSearchDeleteInstancesResponseResultCustomMetadataDataType._(this.value);

factory AiSearchDeleteInstancesResponseResultCustomMetadataDataType.fromJson(String json) { return switch (json) {
  'text' => text,
  'number' => number,
  'boolean' => boolean,
  _ => AiSearchDeleteInstancesResponseResultCustomMetadataDataType._(json),
}; }

static const AiSearchDeleteInstancesResponseResultCustomMetadataDataType text = AiSearchDeleteInstancesResponseResultCustomMetadataDataType._('text');

static const AiSearchDeleteInstancesResponseResultCustomMetadataDataType number = AiSearchDeleteInstancesResponseResultCustomMetadataDataType._('number');

static const AiSearchDeleteInstancesResponseResultCustomMetadataDataType boolean = AiSearchDeleteInstancesResponseResultCustomMetadataDataType._('boolean');

static const List<AiSearchDeleteInstancesResponseResultCustomMetadataDataType> values = [text, number, boolean];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchDeleteInstancesResponseResultCustomMetadataDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultCustomMetadataDataType($value)'; } 
 }
@immutable final class AiSearchDeleteInstancesResponseResultCustomMetadata {const AiSearchDeleteInstancesResponseResultCustomMetadata({required this.dataType, required this.fieldName, });

factory AiSearchDeleteInstancesResponseResultCustomMetadata.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponseResultCustomMetadata(
  dataType: AiSearchDeleteInstancesResponseResultCustomMetadataDataType.fromJson(json['data_type'] as String),
  fieldName: json['field_name'] as String,
); }

final AiSearchDeleteInstancesResponseResultCustomMetadataDataType dataType;

final String fieldName;

Map<String, dynamic> toJson() { return {
  'data_type': dataType.toJson(),
  'field_name': fieldName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data_type') &&
      json.containsKey('field_name') && json['field_name'] is String; } 
AiSearchDeleteInstancesResponseResultCustomMetadata copyWith({AiSearchDeleteInstancesResponseResultCustomMetadataDataType? dataType, String? fieldName, }) { return AiSearchDeleteInstancesResponseResultCustomMetadata(
  dataType: dataType ?? this.dataType,
  fieldName: fieldName ?? this.fieldName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponseResultCustomMetadata &&
          dataType == other.dataType &&
          fieldName == other.fieldName; } 
@override int get hashCode { return Object.hash(dataType, fieldName); } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultCustomMetadata(dataType: $dataType, fieldName: $fieldName)'; } 
 }

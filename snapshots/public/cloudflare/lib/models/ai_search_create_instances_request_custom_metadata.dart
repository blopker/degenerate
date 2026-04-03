// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesRequestCustomMetadataDataType {const AiSearchCreateInstancesRequestCustomMetadataDataType._(this.value);

factory AiSearchCreateInstancesRequestCustomMetadataDataType.fromJson(String json) { return switch (json) {
  'text' => text,
  'number' => number,
  'boolean' => boolean,
  _ => AiSearchCreateInstancesRequestCustomMetadataDataType._(json),
}; }

static const AiSearchCreateInstancesRequestCustomMetadataDataType text = AiSearchCreateInstancesRequestCustomMetadataDataType._('text');

static const AiSearchCreateInstancesRequestCustomMetadataDataType number = AiSearchCreateInstancesRequestCustomMetadataDataType._('number');

static const AiSearchCreateInstancesRequestCustomMetadataDataType boolean = AiSearchCreateInstancesRequestCustomMetadataDataType._('boolean');

static const List<AiSearchCreateInstancesRequestCustomMetadataDataType> values = [text, number, boolean];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchCreateInstancesRequestCustomMetadataDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchCreateInstancesRequestCustomMetadataDataType($value)'; } 
 }
@immutable final class AiSearchCreateInstancesRequestCustomMetadata {const AiSearchCreateInstancesRequestCustomMetadata({required this.dataType, required this.fieldName, });

factory AiSearchCreateInstancesRequestCustomMetadata.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesRequestCustomMetadata(
  dataType: AiSearchCreateInstancesRequestCustomMetadataDataType.fromJson(json['data_type'] as String),
  fieldName: json['field_name'] as String,
); }

final AiSearchCreateInstancesRequestCustomMetadataDataType dataType;

final String fieldName;

Map<String, dynamic> toJson() { return {
  'data_type': dataType.toJson(),
  'field_name': fieldName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data_type') &&
      json.containsKey('field_name') && json['field_name'] is String; } 
AiSearchCreateInstancesRequestCustomMetadata copyWith({AiSearchCreateInstancesRequestCustomMetadataDataType? dataType, String? fieldName, }) { return AiSearchCreateInstancesRequestCustomMetadata(
  dataType: dataType ?? this.dataType,
  fieldName: fieldName ?? this.fieldName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesRequestCustomMetadata &&
          dataType == other.dataType &&
          fieldName == other.fieldName; } 
@override int get hashCode { return Object.hash(dataType, fieldName); } 
@override String toString() { return 'AiSearchCreateInstancesRequestCustomMetadata(dataType: $dataType, fieldName: $fieldName)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of data source. Always `custom`.
@immutable final class CreateEvalCustomDataSourceConfigType {const CreateEvalCustomDataSourceConfigType._(this.value);

factory CreateEvalCustomDataSourceConfigType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => CreateEvalCustomDataSourceConfigType._(json),
}; }

static const CreateEvalCustomDataSourceConfigType custom = CreateEvalCustomDataSourceConfigType._('custom');

static const List<CreateEvalCustomDataSourceConfigType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateEvalCustomDataSourceConfigType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateEvalCustomDataSourceConfigType($value)'; } 
 }
/// A CustomDataSourceConfig object that defines the schema for the data source used for the evaluation runs.
/// This schema is used to define the shape of the data that will be:
/// - Used to define your testing criteria and
/// - What data is required when creating a run
/// 
@immutable final class CreateEvalCustomDataSourceConfig {const CreateEvalCustomDataSourceConfig({required this.itemSchema, this.type = CreateEvalCustomDataSourceConfigType.custom, this.includeSampleSchema = false, });

factory CreateEvalCustomDataSourceConfig.fromJson(Map<String, dynamic> json) { return CreateEvalCustomDataSourceConfig(
  type: CreateEvalCustomDataSourceConfigType.fromJson(json['type'] as String),
  itemSchema: (json['item_schema'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  includeSampleSchema: json.containsKey('include_sample_schema') ? json['include_sample_schema'] as bool : false,
); }

/// The type of data source. Always `custom`.
final CreateEvalCustomDataSourceConfigType type;

/// The json schema for each row in the data source.
final Map<String,dynamic> itemSchema;

/// Whether the eval should expect you to populate the sample namespace (ie, by generating responses off of your data source)
final bool includeSampleSchema;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_schema': itemSchema,
  'include_sample_schema': includeSampleSchema,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_schema'); } 
CreateEvalCustomDataSourceConfig copyWith({CreateEvalCustomDataSourceConfigType? type, Map<String,dynamic>? itemSchema, bool Function()? includeSampleSchema, }) { return CreateEvalCustomDataSourceConfig(
  type: type ?? this.type,
  itemSchema: itemSchema ?? this.itemSchema,
  includeSampleSchema: includeSampleSchema != null ? includeSampleSchema() : this.includeSampleSchema,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateEvalCustomDataSourceConfig &&
          type == other.type &&
          itemSchema == other.itemSchema &&
          includeSampleSchema == other.includeSampleSchema; } 
@override int get hashCode { return Object.hash(type, itemSchema, includeSampleSchema); } 
@override String toString() { return 'CreateEvalCustomDataSourceConfig(type: $type, itemSchema: $itemSchema, includeSampleSchema: $includeSampleSchema)'; } 
 }

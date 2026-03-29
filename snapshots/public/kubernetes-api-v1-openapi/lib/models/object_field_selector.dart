// GENERATED CODE - DO NOT MODIFY BY HAND

/// ObjectFieldSelector selects an APIVersioned field of an object.
final class ObjectFieldSelector {const ObjectFieldSelector({this.apiVersion, this.fieldPath = '', });

factory ObjectFieldSelector.fromJson(Map<String, dynamic> json) { return ObjectFieldSelector(
  apiVersion: json['apiVersion'] as String?,
  fieldPath: json['fieldPath'] as String,
); }

/// Version of the schema the FieldPath is written in terms of, defaults to "v1".
final String? apiVersion;

/// Path of the field to select in the specified API version.
final String fieldPath;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'fieldPath': fieldPath,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fieldPath') && json['fieldPath'] is String; } 
ObjectFieldSelector copyWith({String Function()? apiVersion, String? fieldPath, }) { return ObjectFieldSelector(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  fieldPath: fieldPath ?? this.fieldPath,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObjectFieldSelector &&
          apiVersion == other.apiVersion &&
          fieldPath == other.fieldPath; } 
@override int get hashCode { return Object.hash(apiVersion, fieldPath); } 
@override String toString() { return 'ObjectFieldSelector(apiVersion: $apiVersion, fieldPath: $fieldPath)'; } 
 }

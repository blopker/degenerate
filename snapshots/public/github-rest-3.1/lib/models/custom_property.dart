// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_property_default_value.dart';/// The source type of the property
@immutable final class CustomPropertySourceType {const CustomPropertySourceType._(this.value);

factory CustomPropertySourceType.fromJson(String json) { return switch (json) {
  'organization' => organization,
  'enterprise' => enterprise,
  _ => CustomPropertySourceType._(json),
}; }

static const CustomPropertySourceType organization = CustomPropertySourceType._('organization');

static const CustomPropertySourceType enterprise = CustomPropertySourceType._('enterprise');

static const List<CustomPropertySourceType> values = [organization, enterprise];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomPropertySourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomPropertySourceType($value)'; } 
 }
/// The type of the value for the property
@immutable final class CustomPropertyValueType {const CustomPropertyValueType._(this.value);

factory CustomPropertyValueType.fromJson(String json) { return switch (json) {
  'string' => string,
  'single_select' => singleSelect,
  'multi_select' => multiSelect,
  'true_false' => trueFalse,
  'url' => url,
  _ => CustomPropertyValueType._(json),
}; }

static const CustomPropertyValueType string = CustomPropertyValueType._('string');

static const CustomPropertyValueType singleSelect = CustomPropertyValueType._('single_select');

static const CustomPropertyValueType multiSelect = CustomPropertyValueType._('multi_select');

static const CustomPropertyValueType trueFalse = CustomPropertyValueType._('true_false');

static const CustomPropertyValueType url = CustomPropertyValueType._('url');

static const List<CustomPropertyValueType> values = [string, singleSelect, multiSelect, trueFalse, url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomPropertyValueType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomPropertyValueType($value)'; } 
 }
/// Who can edit the values of the property
@immutable final class CustomPropertyValuesEditableBy {const CustomPropertyValuesEditableBy._(this.value);

factory CustomPropertyValuesEditableBy.fromJson(String json) { return switch (json) {
  'org_actors' => orgActors,
  'org_and_repo_actors' => orgAndRepoActors,
  'null' => $null,
  _ => CustomPropertyValuesEditableBy._(json),
}; }

static const CustomPropertyValuesEditableBy orgActors = CustomPropertyValuesEditableBy._('org_actors');

static const CustomPropertyValuesEditableBy orgAndRepoActors = CustomPropertyValuesEditableBy._('org_and_repo_actors');

static const CustomPropertyValuesEditableBy $null = CustomPropertyValuesEditableBy._('null');

static const List<CustomPropertyValuesEditableBy> values = [orgActors, orgAndRepoActors, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomPropertyValuesEditableBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomPropertyValuesEditableBy($value)'; } 
 }
/// Custom property defined on an organization
@immutable final class CustomProperty {const CustomProperty({required this.propertyName, required this.valueType, this.url, this.sourceType, this.$required, this.defaultValue = const Omittable.absent(), this.description = const Omittable.absent(), this.allowedValues = const Omittable.absent(), this.valuesEditableBy = const Omittable.absent(), this.requireExplicitValues, });

factory CustomProperty.fromJson(Map<String, dynamic> json) { return CustomProperty(
  propertyName: json['property_name'] as String,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  sourceType: json['source_type'] != null ? CustomPropertySourceType.fromJson(json['source_type'] as String) : null,
  valueType: CustomPropertyValueType.fromJson(json['value_type'] as String),
  $required: json['required'] as bool?,
  defaultValue: json.containsKey('default_value') ? Omittable(json['default_value'] != null ? OneOf2.parse(json['default_value'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  allowedValues: json.containsKey('allowed_values') ? Omittable((json['allowed_values'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  valuesEditableBy: json.containsKey('values_editable_by') ? Omittable(json['values_editable_by'] != null ? CustomPropertyValuesEditableBy.fromJson(json['values_editable_by'] as String) : null) : const Omittable.absent(),
  requireExplicitValues: json['require_explicit_values'] as bool?,
); }

/// The name of the property
final String propertyName;

/// The URL that can be used to fetch, update, or delete info about this property via the API.
final Uri? url;

/// The source type of the property
final CustomPropertySourceType? sourceType;

/// The type of the value for the property
final CustomPropertyValueType valueType;

/// Whether the property is required.
final bool? $required;

/// Default value of the property
final Omittable<CustomPropertyDefaultValue?> defaultValue;

/// Short description of the property
final Omittable<String?> description;

/// An ordered list of the allowed values of the property.
/// The property can have up to 200 allowed values.
final Omittable<List<String>?> allowedValues;

/// Who can edit the values of the property
final Omittable<CustomPropertyValuesEditableBy?> valuesEditableBy;

/// Whether setting properties values is mandatory
final bool? requireExplicitValues;

Map<String, dynamic> toJson() { return {
  'property_name': propertyName,
  if (url != null) 'url': url?.toString(),
  if (sourceType != null) 'source_type': sourceType?.toJson(),
  'value_type': valueType.toJson(),
  'required': ?$required,
  if (defaultValue.isPresent) 'default_value': defaultValue.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  if (allowedValues.isPresent) 'allowed_values': allowedValues.value,
  if (valuesEditableBy.isPresent) 'values_editable_by': valuesEditableBy.value?.toJson(),
  'require_explicit_values': ?requireExplicitValues,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('property_name') && json['property_name'] is String &&
      json.containsKey('value_type'); } 
CustomProperty copyWith({String? propertyName, Uri? Function()? url, CustomPropertySourceType? Function()? sourceType, CustomPropertyValueType? valueType, bool? Function()? $required, Omittable<CustomPropertyDefaultValue?>? defaultValue, Omittable<String?>? description, Omittable<List<String>?>? allowedValues, Omittable<CustomPropertyValuesEditableBy?>? valuesEditableBy, bool? Function()? requireExplicitValues, }) { return CustomProperty(
  propertyName: propertyName ?? this.propertyName,
  url: url != null ? url() : this.url,
  sourceType: sourceType != null ? sourceType() : this.sourceType,
  valueType: valueType ?? this.valueType,
  $required: $required != null ? $required() : this.$required,
  defaultValue: defaultValue ?? this.defaultValue,
  description: description ?? this.description,
  allowedValues: allowedValues ?? this.allowedValues,
  valuesEditableBy: valuesEditableBy ?? this.valuesEditableBy,
  requireExplicitValues: requireExplicitValues != null ? requireExplicitValues() : this.requireExplicitValues,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomProperty &&
          propertyName == other.propertyName &&
          url == other.url &&
          sourceType == other.sourceType &&
          valueType == other.valueType &&
          $required == other.$required &&
          defaultValue == other.defaultValue &&
          description == other.description &&
          allowedValues.isPresent == other.allowedValues.isPresent &&
          listEquals(allowedValues.value, other.allowedValues.value) &&
          valuesEditableBy == other.valuesEditableBy &&
          requireExplicitValues == other.requireExplicitValues; } 
@override int get hashCode { return Object.hash(propertyName, url, sourceType, valueType, $required, defaultValue, description, Object.hashAll(allowedValues.value ?? const []), valuesEditableBy, requireExplicitValues); } 
@override String toString() { return 'CustomProperty(propertyName: $propertyName, url: $url, sourceType: $sourceType, valueType: $valueType, \$required: ${$required}, defaultValue: $defaultValue, description: $description, allowedValues: $allowedValues, valuesEditableBy: $valuesEditableBy, requireExplicitValues: $requireExplicitValues)'; } 
 }

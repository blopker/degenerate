// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_property_set_payload_default_value.dart';/// The type of the value for the property
@immutable final class CustomPropertySetPayloadValueType {const CustomPropertySetPayloadValueType._(this.value);

factory CustomPropertySetPayloadValueType.fromJson(String json) { return switch (json) {
  'string' => string,
  'single_select' => singleSelect,
  'multi_select' => multiSelect,
  'true_false' => trueFalse,
  'url' => url,
  _ => CustomPropertySetPayloadValueType._(json),
}; }

static const CustomPropertySetPayloadValueType string = CustomPropertySetPayloadValueType._('string');

static const CustomPropertySetPayloadValueType singleSelect = CustomPropertySetPayloadValueType._('single_select');

static const CustomPropertySetPayloadValueType multiSelect = CustomPropertySetPayloadValueType._('multi_select');

static const CustomPropertySetPayloadValueType trueFalse = CustomPropertySetPayloadValueType._('true_false');

static const CustomPropertySetPayloadValueType url = CustomPropertySetPayloadValueType._('url');

static const List<CustomPropertySetPayloadValueType> values = [string, singleSelect, multiSelect, trueFalse, url];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomPropertySetPayloadValueType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomPropertySetPayloadValueType($value)'; } 
 }
/// Who can edit the values of the property
@immutable final class CustomPropertySetPayloadValuesEditableBy {const CustomPropertySetPayloadValuesEditableBy._(this.value);

factory CustomPropertySetPayloadValuesEditableBy.fromJson(String json) { return switch (json) {
  'org_actors' => orgActors,
  'org_and_repo_actors' => orgAndRepoActors,
  'null' => $null,
  _ => CustomPropertySetPayloadValuesEditableBy._(json),
}; }

static const CustomPropertySetPayloadValuesEditableBy orgActors = CustomPropertySetPayloadValuesEditableBy._('org_actors');

static const CustomPropertySetPayloadValuesEditableBy orgAndRepoActors = CustomPropertySetPayloadValuesEditableBy._('org_and_repo_actors');

static const CustomPropertySetPayloadValuesEditableBy $null = CustomPropertySetPayloadValuesEditableBy._('null');

static const List<CustomPropertySetPayloadValuesEditableBy> values = [orgActors, orgAndRepoActors, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomPropertySetPayloadValuesEditableBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomPropertySetPayloadValuesEditableBy($value)'; } 
 }
/// Custom property set payload
@immutable final class CustomPropertySetPayload {const CustomPropertySetPayload({required this.valueType, this.$required, this.defaultValue = const Omittable.absent(), this.description = const Omittable.absent(), this.allowedValues = const Omittable.absent(), this.valuesEditableBy = const Omittable.absent(), this.requireExplicitValues, });

factory CustomPropertySetPayload.fromJson(Map<String, dynamic> json) { return CustomPropertySetPayload(
  valueType: CustomPropertySetPayloadValueType.fromJson(json['value_type'] as String),
  $required: json['required'] as bool?,
  defaultValue: json.containsKey('default_value') ? Omittable(json['default_value'] != null ? OneOf2.parse(json['default_value'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  allowedValues: json.containsKey('allowed_values') ? Omittable((json['allowed_values'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  valuesEditableBy: json.containsKey('values_editable_by') ? Omittable(json['values_editable_by'] != null ? CustomPropertySetPayloadValuesEditableBy.fromJson(json['values_editable_by'] as String) : null) : const Omittable.absent(),
  requireExplicitValues: json['require_explicit_values'] as bool?,
); }

/// The type of the value for the property
final CustomPropertySetPayloadValueType valueType;

/// Whether the property is required.
final bool? $required;

/// Default value of the property
final Omittable<CustomPropertySetPayloadDefaultValue?> defaultValue;

/// Short description of the property
final Omittable<String?> description;

/// An ordered list of the allowed values of the property.
/// The property can have up to 200 allowed values.
final Omittable<List<String>?> allowedValues;

/// Who can edit the values of the property
final Omittable<CustomPropertySetPayloadValuesEditableBy?> valuesEditableBy;

/// Whether setting properties values is mandatory
final bool? requireExplicitValues;

Map<String, dynamic> toJson() { return {
  'value_type': valueType.toJson(),
  'required': ?$required,
  if (defaultValue.isPresent) 'default_value': defaultValue.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  if (allowedValues.isPresent) 'allowed_values': allowedValues.value,
  if (valuesEditableBy.isPresent) 'values_editable_by': valuesEditableBy.value?.toJson(),
  'require_explicit_values': ?requireExplicitValues,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value_type'); } 
CustomPropertySetPayload copyWith({CustomPropertySetPayloadValueType? valueType, bool? Function()? $required, Omittable<CustomPropertySetPayloadDefaultValue?>? defaultValue, Omittable<String?>? description, Omittable<List<String>?>? allowedValues, Omittable<CustomPropertySetPayloadValuesEditableBy?>? valuesEditableBy, bool? Function()? requireExplicitValues, }) { return CustomPropertySetPayload(
  valueType: valueType ?? this.valueType,
  $required: $required != null ? $required() : this.$required,
  defaultValue: defaultValue ?? this.defaultValue,
  description: description ?? this.description,
  allowedValues: allowedValues ?? this.allowedValues,
  valuesEditableBy: valuesEditableBy ?? this.valuesEditableBy,
  requireExplicitValues: requireExplicitValues != null ? requireExplicitValues() : this.requireExplicitValues,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPropertySetPayload &&
          valueType == other.valueType &&
          $required == other.$required &&
          defaultValue == other.defaultValue &&
          description == other.description &&
          allowedValues.isPresent == other.allowedValues.isPresent &&
          listEquals(allowedValues.value, other.allowedValues.value) &&
          valuesEditableBy == other.valuesEditableBy &&
          requireExplicitValues == other.requireExplicitValues; } 
@override int get hashCode { return Object.hash(valueType, $required, defaultValue, description, Object.hashAll(allowedValues.value ?? const []), valuesEditableBy, requireExplicitValues); } 
@override String toString() { return 'CustomPropertySetPayload(valueType: $valueType, \$required: ${$required}, defaultValue: $defaultValue, description: $description, allowedValues: $allowedValues, valuesEditableBy: $valuesEditableBy, requireExplicitValues: $requireExplicitValues)'; } 
 }

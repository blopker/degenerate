// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_property_value_value.dart';/// Custom property name and associated value
@immutable final class CustomPropertyValue {const CustomPropertyValue({required this.propertyName, required this.value, });

factory CustomPropertyValue.fromJson(Map<String, dynamic> json) { return CustomPropertyValue(
  propertyName: json['property_name'] as String,
  value: json['value'] != null ? OneOf2.parse(json['value'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null,
); }

/// The name of the property
final String propertyName;

/// The value assigned to the property
final CustomPropertyValueValue? value;

Map<String, dynamic> toJson() { return {
  'property_name': propertyName,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('property_name') && json['property_name'] is String &&
      json.containsKey('value'); } 
CustomPropertyValue copyWith({String? propertyName, CustomPropertyValueValue? Function()? value, }) { return CustomPropertyValue(
  propertyName: propertyName ?? this.propertyName,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPropertyValue &&
          propertyName == other.propertyName &&
          value == other.value; } 
@override int get hashCode { return Object.hash(propertyName, value); } 
@override String toString() { return 'CustomPropertyValue(propertyName: $propertyName, value: $value)'; } 
 }

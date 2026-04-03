// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_property.dart';@immutable final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest({required this.properties});

factory OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest.fromJson(Map<String, dynamic> json) { return OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest(
  properties: (json['properties'] as List<dynamic>).map((e) => CustomProperty.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The array of custom properties to create or update.
final List<CustomProperty> properties;

Map<String, dynamic> toJson() { return {
  'properties': properties.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties'); } 
OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest copyWith({List<CustomProperty>? properties}) { return OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest(
  properties: properties ?? this.properties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest &&
          listEquals(properties, other.properties); } 
@override int get hashCode { return Object.hashAll(properties).hashCode; } 
@override String toString() { return 'OrgsCustomPropertiesForReposCreateOrUpdateOrganizationDefinitionsRequest(properties: $properties)'; } 
 }

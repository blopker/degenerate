// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_registry_package_published_registry_package_package_version_nuget_metadata_id.dart';import 'webhook_registry_package_published_registry_package_package_version_nuget_metadata_value.dart';import 'webhook_registry_package_published_registry_package_package_version_nuget_metadata_value_variant4.dart';@immutable final class WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata {const WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata({this.id = const Omittable.absent(), this.name, this.value, });

factory WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata(
  id: json.containsKey('id') ? Omittable(json['id'] != null ? OneOf3.parse(json['id'], fromA: (v) => v as String, fromB: (v) => v as Map<String, dynamic>, fromC: (v) => (v as num).toInt(),) : null) : const Omittable.absent(),
  name: json['name'] as String?,
  value: json['value'] != null ? OneOf4.parse(json['value'], fromA: (v) => v as bool, fromB: (v) => v as String, fromC: (v) => (v as num).toInt(), fromD: (v) => WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValueVariant4.fromJson(v as Map<String, dynamic>),) : null,
); }

final Omittable<WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataId?> id;

final String? name;

final WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValue? value;

Map<String, dynamic> toJson() { return {
  if (id.isPresent) 'id': id.value?.toJson(),
  'name': ?name,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'value'}.contains(key)); } 
WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata copyWith({Omittable<WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataId?>? id, String? Function()? name, WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadataValue? Function()? value, }) { return WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata(
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata &&
          id == other.id &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, name, value); } 
@override String toString() { return 'WebhookRegistryPackagePublishedRegistryPackagePackageVersionNugetMetadata(id: $id, name: $name, value: $value)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_schemas_onetimepin_config.dart';import 'access_schemas_onetimepin_scim_config.dart';import 'access_uuid.dart';@immutable final class AccessSchemasOnetimepin {const AccessSchemasOnetimepin({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessSchemasOnetimepin.fromJson(Map<String, dynamic> json) { return AccessSchemasOnetimepin(
  config: AccessSchemasOnetimepinConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessSchemasOnetimepinScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: json['type'],
); }

final AccessSchemasOnetimepinConfig config;

final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessSchemasOnetimepinScimConfig? scimConfig;

final dynamic type;

Map<String, dynamic> toJson() { return {
  'config': config.toJson(),
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type'); } 
AccessSchemasOnetimepin copyWith({AccessSchemasOnetimepinConfig? config, AccessUuid Function()? id, AccessComponentsSchemasName? name, AccessSchemasOnetimepinScimConfig Function()? scimConfig, dynamic Function()? type, }) { return AccessSchemasOnetimepin(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOnetimepin &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, id, name, scimConfig, type); } 
@override String toString() { return 'AccessSchemasOnetimepin(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)'; } 
 }

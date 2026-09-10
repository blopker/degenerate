// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_name.dart';import 'access_onetimepin_request_config.dart';import 'access_onetimepin_request_scim_config.dart';import 'access_uuid.dart';@immutable final class AccessOnetimepinRequestType {const AccessOnetimepinRequestType._(this.value);

factory AccessOnetimepinRequestType.fromJson(String json) {return switch (json) {
  'onetimepin' => onetimepin,
  _ => AccessOnetimepinRequestType._(json),
};}

static const AccessOnetimepinRequestType onetimepin = AccessOnetimepinRequestType._('onetimepin');

static const List<AccessOnetimepinRequestType> values = [onetimepin];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessOnetimepinRequestType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessOnetimepinRequestType($value)';}
}
@immutable final class AccessOnetimepinRequest {const AccessOnetimepinRequest({required this.config, required this.name, required this.type, this.id, this.scimConfig, });

factory AccessOnetimepinRequest.fromJson(Map<String, dynamic> json) {return AccessOnetimepinRequest(
  config: AccessOnetimepinRequestConfig.fromJson(json['config'] as Map<String, dynamic>),
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: AccessComponentsSchemasName.fromJson(json['name'] as String),
  scimConfig: json['scim_config'] != null ? AccessOnetimepinRequestScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
  type: AccessOnetimepinRequestType.fromJson(json['type'] as String),
);}

final AccessOnetimepinRequestConfig config;

/// UUID.
final AccessUuid? id;

/// The name of the identity provider, shown to users on the login page.
final AccessComponentsSchemasName name;

/// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
final AccessOnetimepinRequestScimConfig? scimConfig;

final AccessOnetimepinRequestType type;

Map<String, dynamic> toJson() {return {
  'config': config.toJson(),
  if (id != null) 'id': id?.toJson(),
  'name': name.toJson(),
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
  'type': type.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('config') &&
      json.containsKey('name') &&
      json.containsKey('type');}
AccessOnetimepinRequest copyWith({AccessOnetimepinRequestConfig? config, AccessUuid? Function()? id, AccessComponentsSchemasName? name, AccessOnetimepinRequestScimConfig? Function()? scimConfig, AccessOnetimepinRequestType? type, }) {return AccessOnetimepinRequest(
  config: config ?? this.config,
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
  type: type ?? this.type,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessOnetimepinRequest &&
          config == other.config &&
          id == other.id &&
          name == other.name &&
          scimConfig == other.scimConfig &&
          type == other.type;}
@override int get hashCode {return Object.hash(config, id, name, scimConfig, type);}
@override String toString() {return 'AccessOnetimepinRequest(config: $config, id: $id, name: $name, scimConfig: $scimConfig, type: $type)';}
}

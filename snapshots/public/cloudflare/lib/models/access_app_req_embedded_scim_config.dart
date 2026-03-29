// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_scim_config.dart';final class AccessAppReqEmbeddedScimConfig {const AccessAppReqEmbeddedScimConfig({this.scimConfig});

factory AccessAppReqEmbeddedScimConfig.fromJson(Map<String, dynamic> json) { return AccessAppReqEmbeddedScimConfig(
  scimConfig: json['scim_config'] != null ? AccessScimConfig.fromJson(json['scim_config'] as Map<String, dynamic>) : null,
); }

final AccessScimConfig? scimConfig;

Map<String, dynamic> toJson() { return {
  if (scimConfig != null) 'scim_config': scimConfig?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'scim_config'}.contains(key)); } 
AccessAppReqEmbeddedScimConfig copyWith({AccessScimConfig Function()? scimConfig}) { return AccessAppReqEmbeddedScimConfig(
  scimConfig: scimConfig != null ? scimConfig() : this.scimConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppReqEmbeddedScimConfig &&
          scimConfig == other.scimConfig; } 
@override int get hashCode { return scimConfig.hashCode; } 
@override String toString() { return 'AccessAppReqEmbeddedScimConfig(scimConfig: $scimConfig)'; } 
 }

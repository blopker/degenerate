// GENERATED CODE - DO NOT MODIFY BY HAND

import 'config_map_env_source.dart';import 'secret_env_source.dart';/// EnvFromSource represents the source of a set of ConfigMaps or Secrets
final class EnvFromSource {const EnvFromSource({this.configMapRef, this.prefix, this.secretRef, });

factory EnvFromSource.fromJson(Map<String, dynamic> json) { return EnvFromSource(
  configMapRef: json['configMapRef'] != null ? ConfigMapEnvSource.fromJson(json['configMapRef'] as Map<String, dynamic>) : null,
  prefix: json['prefix'] as String?,
  secretRef: json['secretRef'] != null ? SecretEnvSource.fromJson(json['secretRef'] as Map<String, dynamic>) : null,
); }

/// The ConfigMap to select from
final ConfigMapEnvSource? configMapRef;

/// Optional text to prepend to the name of each environment variable. May consist of any printable ASCII characters except '='.
final String? prefix;

/// The Secret to select from
final SecretEnvSource? secretRef;

Map<String, dynamic> toJson() { return {
  if (configMapRef != null) 'configMapRef': configMapRef?.toJson(),
  'prefix': ?prefix,
  if (secretRef != null) 'secretRef': secretRef?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
EnvFromSource copyWith({ConfigMapEnvSource Function()? configMapRef, String Function()? prefix, SecretEnvSource Function()? secretRef, }) { return EnvFromSource(
  configMapRef: configMapRef != null ? configMapRef() : this.configMapRef,
  prefix: prefix != null ? prefix() : this.prefix,
  secretRef: secretRef != null ? secretRef() : this.secretRef,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnvFromSource &&
          configMapRef == other.configMapRef &&
          prefix == other.prefix &&
          secretRef == other.secretRef; } 
@override int get hashCode { return Object.hash(configMapRef, prefix, secretRef); } 
@override String toString() { return 'EnvFromSource(configMapRef: $configMapRef, prefix: $prefix, secretRef: $secretRef)'; } 
 }

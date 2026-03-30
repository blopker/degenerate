// GENERATED CODE - DO NOT MODIFY BY HAND

/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
/// 
/// The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
final class ConfigMapEnvSource {const ConfigMapEnvSource({this.name = '', this.optional, });

factory ConfigMapEnvSource.fromJson(Map<String, dynamic> json) { return ConfigMapEnvSource(
  name: json.containsKey('name') ? json['name'] as String : '',
  optional: json['optional'] as bool?,
); }

/// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
final String name;

/// Specify whether the ConfigMap must be defined
final bool? optional;

Map<String, dynamic> toJson() { return {
  'name': name,
  'optional': ?optional,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'optional'}.contains(key)); } 
ConfigMapEnvSource copyWith({String Function()? name, bool Function()? optional, }) { return ConfigMapEnvSource(
  name: name != null ? name() : this.name,
  optional: optional != null ? optional() : this.optional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfigMapEnvSource &&
          name == other.name &&
          optional == other.optional; } 
@override int get hashCode { return Object.hash(name, optional); } 
@override String toString() { return 'ConfigMapEnvSource(name: $name, optional: $optional)'; } 
 }

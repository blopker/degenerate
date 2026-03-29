// GENERATED CODE - DO NOT MODIFY BY HAND

/// SecretKeySelector selects a key of a Secret.
final class SecretKeySelector {const SecretKeySelector({this.key = '', this.name = '', this.optional, });

factory SecretKeySelector.fromJson(Map<String, dynamic> json) { return SecretKeySelector(
  key: json['key'] as String,
  name: json.containsKey('name') ? json['name'] as String : '',
  optional: json['optional'] as bool?,
); }

/// The key of the secret to select from.  Must be a valid secret key.
final String key;

/// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
final String name;

/// Specify whether the Secret or its key must be defined
final bool? optional;

Map<String, dynamic> toJson() { return {
  'key': key,
  'name': name,
  'optional': ?optional,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String; } 
SecretKeySelector copyWith({String? key, String Function()? name, bool Function()? optional, }) { return SecretKeySelector(
  key: key ?? this.key,
  name: name != null ? name() : this.name,
  optional: optional != null ? optional() : this.optional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretKeySelector &&
          key == other.key &&
          name == other.name &&
          optional == other.optional; } 
@override int get hashCode { return Object.hash(key, name, optional); } 
@override String toString() { return 'SecretKeySelector(key: $key, name: $name, optional: $optional)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'key_to_path.dart';/// Adapts a secret into a projected volume.
/// 
/// The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
@immutable final class SecretProjection {const SecretProjection({this.items, this.name = '', this.optional, });

factory SecretProjection.fromJson(Map<String, dynamic> json) { return SecretProjection(
  items: (json['items'] as List<dynamic>?)?.map((e) => KeyToPath.fromJson(e as Map<String, dynamic>)).toList(),
  name: json.containsKey('name') ? json['name'] as String : '',
  optional: json['optional'] as bool?,
); }

/// items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
final List<KeyToPath>? items;

/// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
final String name;

/// optional field specify whether the Secret or its key must be defined
final bool? optional;

Map<String, dynamic> toJson() { return {
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
  'name': name,
  'optional': ?optional,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'items', 'name', 'optional'}.contains(key)); } 
SecretProjection copyWith({List<KeyToPath> Function()? items, String Function()? name, bool Function()? optional, }) { return SecretProjection(
  items: items != null ? items() : this.items,
  name: name != null ? name() : this.name,
  optional: optional != null ? optional() : this.optional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretProjection &&
          listEquals(items, other.items) &&
          name == other.name &&
          optional == other.optional; } 
@override int get hashCode { return Object.hash(Object.hashAll(items ?? const []), name, optional); } 
@override String toString() { return 'SecretProjection(items: $items, name: $name, optional: $optional)'; } 
 }

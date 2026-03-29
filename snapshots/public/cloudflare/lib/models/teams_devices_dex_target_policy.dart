// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesDexTargetPolicy {const TeamsDevicesDexTargetPolicy({this.$default, this.id, this.name, });

factory TeamsDevicesDexTargetPolicy.fromJson(Map<String, dynamic> json) { return TeamsDevicesDexTargetPolicy(
  $default: json['default'] as bool?,
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// Whether the profile is the account default.
final bool? $default;

/// The id of the device settings profile.
final String? id;

/// The name of the device settings profile.
final String? name;

Map<String, dynamic> toJson() { return {
  'default': ?$default,
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TeamsDevicesDexTargetPolicy copyWith({bool Function()? $default, String Function()? id, String Function()? name, }) { return TeamsDevicesDexTargetPolicy(
  $default: $default != null ? $default() : this.$default,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDexTargetPolicy &&
          $default == other.$default &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash($default, id, name); } 
@override String toString() { return 'TeamsDevicesDexTargetPolicy(\$default: ${$default}, id: $id, name: $name)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// UUID.
extension type const TeamsDevicesComponentsSchemasUuid(String value) {
factory TeamsDevicesComponentsSchemasUuid.fromJson(String json) => TeamsDevicesComponentsSchemasUuid(json);

String toJson() => value;

}
/// The contact email address of the user.
extension type const TeamsDevicesEmail(String value) {
factory TeamsDevicesEmail.fromJson(String json) => TeamsDevicesEmail(json);

String toJson() => value;

}
@immutable final class TeamsDevicesUser {const TeamsDevicesUser({this.email, this.id, this.name, });

factory TeamsDevicesUser.fromJson(Map<String, dynamic> json) { return TeamsDevicesUser(
  email: json['email'] != null ? TeamsDevicesEmail.fromJson(json['email'] as String) : null,
  id: json['id'] != null ? TeamsDevicesComponentsSchemasUuid.fromJson(json['id'] as String) : null,
  name: json['name'] as String?,
); }

/// The contact email address of the user.
final TeamsDevicesEmail? email;

/// UUID.
final TeamsDevicesComponentsSchemasUuid? id;

/// The enrolled device user's name.
final String? name;

Map<String, dynamic> toJson() { return {
  if (email != null) 'email': email?.toJson(),
  if (id != null) 'id': id?.toJson(),
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'id', 'name'}.contains(key)); } 
TeamsDevicesUser copyWith({TeamsDevicesEmail Function()? email, TeamsDevicesComponentsSchemasUuid Function()? id, String Function()? name, }) { return TeamsDevicesUser(
  email: email != null ? email() : this.email,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesUser &&
          email == other.email &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(email, id, name); } 
@override String toString() { return 'TeamsDevicesUser(email: $email, id: $id, name: $name)'; } 
 }

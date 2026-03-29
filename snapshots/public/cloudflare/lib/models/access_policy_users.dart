// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_email.dart';import 'access_users_components_schemas_name.dart';import 'access_uuid.dart';/// Policy evaluation result for an individual user.
final class AccessUserResult {const AccessUserResult._(this.value);

factory AccessUserResult.fromJson(String json) { return switch (json) {
  'approved' => approved,
  'blocked' => blocked,
  'error' => error,
  _ => AccessUserResult._(json),
}; }

static const AccessUserResult approved = AccessUserResult._('approved');

static const AccessUserResult blocked = AccessUserResult._('blocked');

static const AccessUserResult error = AccessUserResult._('error');

static const List<AccessUserResult> values = [approved, blocked, error];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessUserResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessUserResult($value)'; } 
 }
final class AccessPolicyUsers {const AccessPolicyUsers({this.email, this.id, this.name, this.status, });

factory AccessPolicyUsers.fromJson(Map<String, dynamic> json) { return AccessPolicyUsers(
  email: json['email'] != null ? AccessSchemasEmail.fromJson(json['email'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? AccessUsersComponentsSchemasName.fromJson(json['name'] as String) : null,
  status: json['status'] != null ? AccessUserResult.fromJson(json['status'] as String) : null,
); }

final AccessSchemasEmail? email;

final AccessUuid? id;

final AccessUsersComponentsSchemasName? name;

final AccessUserResult? status;

Map<String, dynamic> toJson() { return {
  if (email != null) 'email': email?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'id', 'name', 'status'}.contains(key)); } 
AccessPolicyUsers copyWith({AccessSchemasEmail Function()? email, AccessUuid Function()? id, AccessUsersComponentsSchemasName Function()? name, AccessUserResult Function()? status, }) { return AccessPolicyUsers(
  email: email != null ? email() : this.email,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyUsers &&
          email == other.email &&
          id == other.id &&
          name == other.name &&
          status == other.status; } 
@override int get hashCode { return Object.hash(email, id, name, status); } 
@override String toString() { return 'AccessPolicyUsers(email: $email, id: $id, name: $name, status: $status)'; } 
 }

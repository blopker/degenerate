// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_email.dart';import 'access_timestamp.dart';import 'access_users_components_schemas_name.dart';import 'access_uuid.dart';/// The number of active devices registered to the user.
extension type const AccessActiveDeviceCount(double value) {
factory AccessActiveDeviceCount.fromJson(num json) => AccessActiveDeviceCount(json.toDouble());

num toJson() => value;

}
/// The time at which the user last successfully logged in.
extension type AccessLastSuccessfulLogin(DateTime value) {
factory AccessLastSuccessfulLogin.fromJson(String json) => AccessLastSuccessfulLogin(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// True if the user has authenticated with Cloudflare Access.
extension type const AccessSchemasAccessSeat(bool value) {
factory AccessSchemasAccessSeat.fromJson(bool json) => AccessSchemasAccessSeat(json);

bool toJson() => value;

}
/// True if the user has logged into the WARP client.
extension type const AccessSchemasGatewaySeat(bool value) {
factory AccessSchemasGatewaySeat.fromJson(bool json) => AccessSchemasGatewaySeat(json);

bool toJson() => value;

}
/// The unique API identifier for the Zero Trust seat.
extension type const AccessSchemasSeatUid(String value) {
factory AccessSchemasSeatUid.fromJson(String json) => AccessSchemasSeatUid(json);

String toJson() => value;

}
/// The unique API identifier for the user.
extension type const AccessUid(String value) {
factory AccessUid.fromJson(String json) => AccessUid(json);

String toJson() => value;

}
final class AccessSchemasUsers {const AccessSchemasUsers({this.accessSeat, this.activeDeviceCount, this.createdAt, this.email, this.gatewaySeat, this.id, this.lastSuccessfulLogin, this.name, this.seatUid, this.uid, this.updatedAt, });

factory AccessSchemasUsers.fromJson(Map<String, dynamic> json) { return AccessSchemasUsers(
  accessSeat: json['access_seat'] != null ? AccessSchemasAccessSeat.fromJson(json['access_seat'] as bool) : null,
  activeDeviceCount: json['active_device_count'] != null ? AccessActiveDeviceCount.fromJson(json['active_device_count'] as num) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  email: json['email'] != null ? AccessSchemasEmail.fromJson(json['email'] as String) : null,
  gatewaySeat: json['gateway_seat'] != null ? AccessSchemasGatewaySeat.fromJson(json['gateway_seat'] as bool) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  lastSuccessfulLogin: json['last_successful_login'] != null ? AccessLastSuccessfulLogin.fromJson(json['last_successful_login'] as String) : null,
  name: json['name'] != null ? AccessUsersComponentsSchemasName.fromJson(json['name'] as String) : null,
  seatUid: json['seat_uid'] != null ? AccessSchemasSeatUid.fromJson(json['seat_uid'] as String) : null,
  uid: json['uid'] != null ? AccessUid.fromJson(json['uid'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
); }

/// True if the user has authenticated with Cloudflare Access.
final AccessSchemasAccessSeat? accessSeat;

/// The number of active devices registered to the user.
final AccessActiveDeviceCount? activeDeviceCount;

final AccessTimestamp? createdAt;

/// The email of the user.
final AccessSchemasEmail? email;

/// True if the user has logged into the WARP client.
final AccessSchemasGatewaySeat? gatewaySeat;

final AccessUuid? id;

/// The time at which the user last successfully logged in.
final AccessLastSuccessfulLogin? lastSuccessfulLogin;

final AccessUsersComponentsSchemasName? name;

/// The unique API identifier for the Zero Trust seat.
final AccessSchemasSeatUid? seatUid;

final AccessUid? uid;

final AccessTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (accessSeat != null) 'access_seat': accessSeat?.toJson(),
  if (activeDeviceCount != null) 'active_device_count': activeDeviceCount?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (email != null) 'email': email?.toJson(),
  if (gatewaySeat != null) 'gateway_seat': gatewaySeat?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (lastSuccessfulLogin != null) 'last_successful_login': lastSuccessfulLogin?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (seatUid != null) 'seat_uid': seatUid?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'access_seat', 'active_device_count', 'created_at', 'email', 'gateway_seat', 'id', 'last_successful_login', 'name', 'seat_uid', 'uid', 'updated_at'}.contains(key)); } 
AccessSchemasUsers copyWith({AccessSchemasAccessSeat Function()? accessSeat, AccessActiveDeviceCount Function()? activeDeviceCount, AccessTimestamp Function()? createdAt, AccessSchemasEmail Function()? email, AccessSchemasGatewaySeat Function()? gatewaySeat, AccessUuid Function()? id, AccessLastSuccessfulLogin Function()? lastSuccessfulLogin, AccessUsersComponentsSchemasName Function()? name, AccessSchemasSeatUid Function()? seatUid, AccessUid Function()? uid, AccessTimestamp Function()? updatedAt, }) { return AccessSchemasUsers(
  accessSeat: accessSeat != null ? accessSeat() : this.accessSeat,
  activeDeviceCount: activeDeviceCount != null ? activeDeviceCount() : this.activeDeviceCount,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  email: email != null ? email() : this.email,
  gatewaySeat: gatewaySeat != null ? gatewaySeat() : this.gatewaySeat,
  id: id != null ? id() : this.id,
  lastSuccessfulLogin: lastSuccessfulLogin != null ? lastSuccessfulLogin() : this.lastSuccessfulLogin,
  name: name != null ? name() : this.name,
  seatUid: seatUid != null ? seatUid() : this.seatUid,
  uid: uid != null ? uid() : this.uid,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasUsers &&
          accessSeat == other.accessSeat &&
          activeDeviceCount == other.activeDeviceCount &&
          createdAt == other.createdAt &&
          email == other.email &&
          gatewaySeat == other.gatewaySeat &&
          id == other.id &&
          lastSuccessfulLogin == other.lastSuccessfulLogin &&
          name == other.name &&
          seatUid == other.seatUid &&
          uid == other.uid &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(accessSeat, activeDeviceCount, createdAt, email, gatewaySeat, id, lastSuccessfulLogin, name, seatUid, uid, updatedAt); } 
@override String toString() { return 'AccessSchemasUsers(accessSeat: $accessSeat, activeDeviceCount: $activeDeviceCount, createdAt: $createdAt, email: $email, gatewaySeat: $gatewaySeat, id: $id, lastSuccessfulLogin: $lastSuccessfulLogin, name: $name, seatUid: $seatUid, uid: $uid, updatedAt: $updatedAt)'; } 
 }

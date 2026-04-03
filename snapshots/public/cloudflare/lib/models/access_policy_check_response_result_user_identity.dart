// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policy_check_response_result_user_identity_geo.dart';import 'access_uuid.dart';@immutable final class AccessPolicyCheckResponseResultUserIdentity {const AccessPolicyCheckResponseResultUserIdentity({this.accountId, this.deviceSessions, this.email, this.geo, this.iat, this.id, this.isGateway, this.isWarp, this.name, this.userUuid, this.version, });

factory AccessPolicyCheckResponseResultUserIdentity.fromJson(Map<String, dynamic> json) { return AccessPolicyCheckResponseResultUserIdentity(
  accountId: json['account_id'] as String?,
  deviceSessions: json['device_sessions'] as Map<String, dynamic>?,
  email: json['email'] as String?,
  geo: json['geo'] != null ? AccessPolicyCheckResponseResultUserIdentityGeo.fromJson(json['geo'] as Map<String, dynamic>) : null,
  iat: json['iat'] != null ? (json['iat'] as num).toInt() : null,
  id: json['id'] as String?,
  isGateway: json['is_gateway'] as bool?,
  isWarp: json['is_warp'] as bool?,
  name: json['name'] as String?,
  userUuid: json['user_uuid'] != null ? AccessUuid.fromJson(json['user_uuid'] as String) : null,
  version: json['version'] != null ? (json['version'] as num).toInt() : null,
); }

final String? accountId;

final Map<String,dynamic>? deviceSessions;

final String? email;

final AccessPolicyCheckResponseResultUserIdentityGeo? geo;

final int? iat;

final String? id;

final bool? isGateway;

final bool? isWarp;

final String? name;

final AccessUuid? userUuid;

final int? version;

Map<String, dynamic> toJson() { return {
  'account_id': ?accountId,
  'device_sessions': ?deviceSessions,
  'email': ?email,
  if (geo != null) 'geo': geo?.toJson(),
  'iat': ?iat,
  'id': ?id,
  'is_gateway': ?isGateway,
  'is_warp': ?isWarp,
  'name': ?name,
  if (userUuid != null) 'user_uuid': userUuid?.toJson(),
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_id', 'device_sessions', 'email', 'geo', 'iat', 'id', 'is_gateway', 'is_warp', 'name', 'user_uuid', 'version'}.contains(key)); } 
AccessPolicyCheckResponseResultUserIdentity copyWith({String Function()? accountId, Map<String, dynamic> Function()? deviceSessions, String Function()? email, AccessPolicyCheckResponseResultUserIdentityGeo Function()? geo, int Function()? iat, String Function()? id, bool Function()? isGateway, bool Function()? isWarp, String Function()? name, AccessUuid Function()? userUuid, int Function()? version, }) { return AccessPolicyCheckResponseResultUserIdentity(
  accountId: accountId != null ? accountId() : this.accountId,
  deviceSessions: deviceSessions != null ? deviceSessions() : this.deviceSessions,
  email: email != null ? email() : this.email,
  geo: geo != null ? geo() : this.geo,
  iat: iat != null ? iat() : this.iat,
  id: id != null ? id() : this.id,
  isGateway: isGateway != null ? isGateway() : this.isGateway,
  isWarp: isWarp != null ? isWarp() : this.isWarp,
  name: name != null ? name() : this.name,
  userUuid: userUuid != null ? userUuid() : this.userUuid,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyCheckResponseResultUserIdentity &&
          accountId == other.accountId &&
          deviceSessions == other.deviceSessions &&
          email == other.email &&
          geo == other.geo &&
          iat == other.iat &&
          id == other.id &&
          isGateway == other.isGateway &&
          isWarp == other.isWarp &&
          name == other.name &&
          userUuid == other.userUuid &&
          version == other.version; } 
@override int get hashCode { return Object.hash(accountId, deviceSessions, email, geo, iat, id, isGateway, isWarp, name, userUuid, version); } 
@override String toString() { return 'AccessPolicyCheckResponseResultUserIdentity(accountId: $accountId, deviceSessions: $deviceSessions, email: $email, geo: $geo, iat: $iat, id: $id, isGateway: $isGateway, isWarp: $isWarp, name: $name, userUuid: $userUuid, version: $version)'; } 
 }

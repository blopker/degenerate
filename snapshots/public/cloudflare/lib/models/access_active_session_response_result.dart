// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_active_session_response_result_idp.dart';import 'access_active_session_response_result_mtls_auth.dart';import 'access_device_session.dart';import 'access_geo.dart';import 'access_schemas_device_posture_rule.dart';final class AccessActiveSessionResponseResult {const AccessActiveSessionResponseResult({this.accountId, this.authStatus, this.commonName, this.deviceId, this.deviceSessions, this.devicePosture, this.email, this.geo, this.iat, this.idp, this.ip, this.isGateway, this.isWarp, this.mtlsAuth, this.serviceTokenId, this.serviceTokenStatus, this.userUuid, this.version, this.isActive, });

factory AccessActiveSessionResponseResult.fromJson(Map<String, dynamic> json) { return AccessActiveSessionResponseResult(
  accountId: json['account_id'] as String?,
  authStatus: json['auth_status'] as String?,
  commonName: json['common_name'] as String?,
  deviceId: json['device_id'] as String?,
  deviceSessions: (json['device_sessions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, AccessDeviceSession.fromJson(v as Map<String, dynamic>))),
  devicePosture: (json['devicePosture'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, AccessSchemasDevicePostureRule.fromJson(v as Map<String, dynamic>))),
  email: json['email'] as String?,
  geo: json['geo'] != null ? AccessGeo.fromJson(json['geo'] as Map<String, dynamic>) : null,
  iat: json['iat'] != null ? (json['iat'] as num).toDouble() : null,
  idp: json['idp'] != null ? AccessActiveSessionResponseResultIdp.fromJson(json['idp'] as Map<String, dynamic>) : null,
  ip: json['ip'] as String?,
  isGateway: json['is_gateway'] as bool?,
  isWarp: json['is_warp'] as bool?,
  mtlsAuth: json['mtls_auth'] != null ? AccessActiveSessionResponseResultMtlsAuth.fromJson(json['mtls_auth'] as Map<String, dynamic>) : null,
  serviceTokenId: json['service_token_id'] as String?,
  serviceTokenStatus: json['service_token_status'] as bool?,
  userUuid: json['user_uuid'] as String?,
  version: json['version'] != null ? (json['version'] as num).toDouble() : null,
  isActive: json['isActive'] as bool?,
); }

final String? accountId;

final String? authStatus;

final String? commonName;

final String? deviceId;

final Map<String,AccessDeviceSession>? deviceSessions;

final Map<String,AccessSchemasDevicePostureRule>? devicePosture;

final String? email;

final AccessGeo? geo;

final double? iat;

final AccessActiveSessionResponseResultIdp? idp;

final String? ip;

final bool? isGateway;

final bool? isWarp;

final AccessActiveSessionResponseResultMtlsAuth? mtlsAuth;

final String? serviceTokenId;

final bool? serviceTokenStatus;

final String? userUuid;

final double? version;

final bool? isActive;

Map<String, dynamic> toJson() { return {
  'account_id': ?accountId,
  'auth_status': ?authStatus,
  'common_name': ?commonName,
  'device_id': ?deviceId,
  if (deviceSessions != null) 'device_sessions': deviceSessions?.map((k, v) => MapEntry(k, v.toJson())),
  if (devicePosture != null) 'devicePosture': devicePosture?.map((k, v) => MapEntry(k, v.toJson())),
  'email': ?email,
  if (geo != null) 'geo': geo?.toJson(),
  'iat': ?iat,
  if (idp != null) 'idp': idp?.toJson(),
  'ip': ?ip,
  'is_gateway': ?isGateway,
  'is_warp': ?isWarp,
  if (mtlsAuth != null) 'mtls_auth': mtlsAuth?.toJson(),
  'service_token_id': ?serviceTokenId,
  'service_token_status': ?serviceTokenStatus,
  'user_uuid': ?userUuid,
  'version': ?version,
  'isActive': ?isActive,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_id', 'auth_status', 'common_name', 'device_id', 'device_sessions', 'devicePosture', 'email', 'geo', 'iat', 'idp', 'ip', 'is_gateway', 'is_warp', 'mtls_auth', 'service_token_id', 'service_token_status', 'user_uuid', 'version', 'isActive'}.contains(key)); } 
AccessActiveSessionResponseResult copyWith({String Function()? accountId, String Function()? authStatus, String Function()? commonName, String Function()? deviceId, Map<String, AccessDeviceSession> Function()? deviceSessions, Map<String, AccessSchemasDevicePostureRule> Function()? devicePosture, String Function()? email, AccessGeo Function()? geo, double Function()? iat, AccessActiveSessionResponseResultIdp Function()? idp, String Function()? ip, bool Function()? isGateway, bool Function()? isWarp, AccessActiveSessionResponseResultMtlsAuth Function()? mtlsAuth, String Function()? serviceTokenId, bool Function()? serviceTokenStatus, String Function()? userUuid, double Function()? version, bool Function()? isActive, }) { return AccessActiveSessionResponseResult(
  accountId: accountId != null ? accountId() : this.accountId,
  authStatus: authStatus != null ? authStatus() : this.authStatus,
  commonName: commonName != null ? commonName() : this.commonName,
  deviceId: deviceId != null ? deviceId() : this.deviceId,
  deviceSessions: deviceSessions != null ? deviceSessions() : this.deviceSessions,
  devicePosture: devicePosture != null ? devicePosture() : this.devicePosture,
  email: email != null ? email() : this.email,
  geo: geo != null ? geo() : this.geo,
  iat: iat != null ? iat() : this.iat,
  idp: idp != null ? idp() : this.idp,
  ip: ip != null ? ip() : this.ip,
  isGateway: isGateway != null ? isGateway() : this.isGateway,
  isWarp: isWarp != null ? isWarp() : this.isWarp,
  mtlsAuth: mtlsAuth != null ? mtlsAuth() : this.mtlsAuth,
  serviceTokenId: serviceTokenId != null ? serviceTokenId() : this.serviceTokenId,
  serviceTokenStatus: serviceTokenStatus != null ? serviceTokenStatus() : this.serviceTokenStatus,
  userUuid: userUuid != null ? userUuid() : this.userUuid,
  version: version != null ? version() : this.version,
  isActive: isActive != null ? isActive() : this.isActive,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionResponseResult &&
          accountId == other.accountId &&
          authStatus == other.authStatus &&
          commonName == other.commonName &&
          deviceId == other.deviceId &&
          deviceSessions == other.deviceSessions &&
          devicePosture == other.devicePosture &&
          email == other.email &&
          geo == other.geo &&
          iat == other.iat &&
          idp == other.idp &&
          ip == other.ip &&
          isGateway == other.isGateway &&
          isWarp == other.isWarp &&
          mtlsAuth == other.mtlsAuth &&
          serviceTokenId == other.serviceTokenId &&
          serviceTokenStatus == other.serviceTokenStatus &&
          userUuid == other.userUuid &&
          version == other.version &&
          isActive == other.isActive; } 
@override int get hashCode { return Object.hash(accountId, authStatus, commonName, deviceId, deviceSessions, devicePosture, email, geo, iat, idp, ip, isGateway, isWarp, mtlsAuth, serviceTokenId, serviceTokenStatus, userUuid, version, isActive); } 
@override String toString() { return 'AccessActiveSessionResponseResult(accountId: $accountId, authStatus: $authStatus, commonName: $commonName, deviceId: $deviceId, deviceSessions: $deviceSessions, devicePosture: $devicePosture, email: $email, geo: $geo, iat: $iat, idp: $idp, ip: $ip, isGateway: $isGateway, isWarp: $isWarp, mtlsAuth: $mtlsAuth, serviceTokenId: $serviceTokenId, serviceTokenStatus: $serviceTokenStatus, userUuid: $userUuid, version: $version, isActive: $isActive)'; } 
 }

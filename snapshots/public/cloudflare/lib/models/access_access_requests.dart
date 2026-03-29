// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_components_schemas_email.dart';import 'access_timestamp.dart';/// The event that occurred, such as a login attempt.
extension type const AccessAction(String value) {
factory AccessAction.fromJson(String json) => AccessAction(json);

String toJson() => value;

}
/// The result of the authentication event.
extension type const AccessAllowed(bool value) {
factory AccessAllowed.fromJson(bool json) => AccessAllowed(json);

bool toJson() => value;

}
/// The URL of the Access application.
extension type const AccessAppDomain(String value) {
factory AccessAppDomain.fromJson(String json) => AccessAppDomain(json);

String toJson() => value;

}
/// The unique identifier for the Access application.
extension type const AccessAppUid(String value) {
factory AccessAppUid.fromJson(String json) => AccessAppUid(json);

String toJson() => value;

}
/// The IdP used to authenticate.
extension type const AccessConnection(String value) {
factory AccessConnection.fromJson(String json) => AccessConnection(json);

String toJson() => value;

}
/// The IP address of the authenticating user.
extension type const AccessIp(String value) {
factory AccessIp.fromJson(String json) => AccessIp(json);

String toJson() => value;

}
/// The unique identifier for the request to Cloudflare.
extension type const AccessRayId(String value) {
factory AccessRayId.fromJson(String json) => AccessRayId(json);

String toJson() => value;

}
final class AccessAccessRequests {const AccessAccessRequests({this.action, this.allowed, this.appDomain, this.appUid, this.connection, this.createdAt, this.ipAddress, this.rayId, this.userEmail, });

factory AccessAccessRequests.fromJson(Map<String, dynamic> json) { return AccessAccessRequests(
  action: json['action'] != null ? AccessAction.fromJson(json['action'] as String) : null,
  allowed: json['allowed'] != null ? AccessAllowed.fromJson(json['allowed'] as bool) : null,
  appDomain: json['app_domain'] != null ? AccessAppDomain.fromJson(json['app_domain'] as String) : null,
  appUid: json['app_uid'] != null ? AccessAppUid.fromJson(json['app_uid'] as String) : null,
  connection: json['connection'] != null ? AccessConnection.fromJson(json['connection'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  ipAddress: json['ip_address'] != null ? AccessIp.fromJson(json['ip_address'] as String) : null,
  rayId: json['ray_id'] != null ? AccessRayId.fromJson(json['ray_id'] as String) : null,
  userEmail: json['user_email'] != null ? AccessComponentsSchemasEmail.fromJson(json['user_email'] as String) : null,
); }

final AccessAction? action;

final AccessAllowed? allowed;

final AccessAppDomain? appDomain;

final AccessAppUid? appUid;

final AccessConnection? connection;

final AccessTimestamp? createdAt;

final AccessIp? ipAddress;

final AccessRayId? rayId;

final AccessComponentsSchemasEmail? userEmail;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  if (allowed != null) 'allowed': allowed?.toJson(),
  if (appDomain != null) 'app_domain': appDomain?.toJson(),
  if (appUid != null) 'app_uid': appUid?.toJson(),
  if (connection != null) 'connection': connection?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (ipAddress != null) 'ip_address': ipAddress?.toJson(),
  if (rayId != null) 'ray_id': rayId?.toJson(),
  if (userEmail != null) 'user_email': userEmail?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessAccessRequests copyWith({AccessAction Function()? action, AccessAllowed Function()? allowed, AccessAppDomain Function()? appDomain, AccessAppUid Function()? appUid, AccessConnection Function()? connection, AccessTimestamp Function()? createdAt, AccessIp Function()? ipAddress, AccessRayId Function()? rayId, AccessComponentsSchemasEmail Function()? userEmail, }) { return AccessAccessRequests(
  action: action != null ? action() : this.action,
  allowed: allowed != null ? allowed() : this.allowed,
  appDomain: appDomain != null ? appDomain() : this.appDomain,
  appUid: appUid != null ? appUid() : this.appUid,
  connection: connection != null ? connection() : this.connection,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  rayId: rayId != null ? rayId() : this.rayId,
  userEmail: userEmail != null ? userEmail() : this.userEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAccessRequests &&
          action == other.action &&
          allowed == other.allowed &&
          appDomain == other.appDomain &&
          appUid == other.appUid &&
          connection == other.connection &&
          createdAt == other.createdAt &&
          ipAddress == other.ipAddress &&
          rayId == other.rayId &&
          userEmail == other.userEmail; } 
@override int get hashCode { return Object.hash(action, allowed, appDomain, appUid, connection, createdAt, ipAddress, rayId, userEmail); } 
@override String toString() { return 'AccessAccessRequests(action: $action, allowed: $allowed, appDomain: $appDomain, appUid: $appUid, connection: $connection, createdAt: $createdAt, ipAddress: $ipAddress, rayId: $rayId, userEmail: $userEmail)'; } 
 }

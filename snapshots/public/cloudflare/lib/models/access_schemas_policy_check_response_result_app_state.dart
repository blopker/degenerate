// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_uuid.dart';@immutable final class AccessSchemasPolicyCheckResponseResultAppState {const AccessSchemasPolicyCheckResponseResultAppState({this.appUid, this.aud, this.hostname, this.name, this.policies, this.status, });

factory AccessSchemasPolicyCheckResponseResultAppState.fromJson(Map<String, dynamic> json) { return AccessSchemasPolicyCheckResponseResultAppState(
  appUid: json['app_uid'] != null ? AccessUuid.fromJson(json['app_uid'] as String) : null,
  aud: json['aud'] as String?,
  hostname: json['hostname'] as String?,
  name: json['name'] as String?,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => e).toList(),
  status: json['status'] as String?,
); }

final AccessUuid? appUid;

final String? aud;

final String? hostname;

final String? name;

final List<dynamic>? policies;

final String? status;

Map<String, dynamic> toJson() { return {
  if (appUid != null) 'app_uid': appUid?.toJson(),
  'aud': ?aud,
  'hostname': ?hostname,
  'name': ?name,
  'policies': ?policies,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'app_uid', 'aud', 'hostname', 'name', 'policies', 'status'}.contains(key)); } 
AccessSchemasPolicyCheckResponseResultAppState copyWith({AccessUuid Function()? appUid, String Function()? aud, String Function()? hostname, String Function()? name, List<dynamic> Function()? policies, String Function()? status, }) { return AccessSchemasPolicyCheckResponseResultAppState(
  appUid: appUid != null ? appUid() : this.appUid,
  aud: aud != null ? aud() : this.aud,
  hostname: hostname != null ? hostname() : this.hostname,
  name: name != null ? name() : this.name,
  policies: policies != null ? policies() : this.policies,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasPolicyCheckResponseResultAppState &&
          appUid == other.appUid &&
          aud == other.aud &&
          hostname == other.hostname &&
          name == other.name &&
          listEquals(policies, other.policies) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(appUid, aud, hostname, name, Object.hashAll(policies ?? const []), status); } 
@override String toString() { return 'AccessSchemasPolicyCheckResponseResultAppState(appUid: $appUid, aud: $aud, hostname: $hostname, name: $name, policies: $policies, status: $status)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_uuid.dart';@immutable final class AccessPolicyCheckResponseResultAppState {const AccessPolicyCheckResponseResultAppState({this.appUid, this.aud, this.hostname, this.name, this.policies, this.status, });

factory AccessPolicyCheckResponseResultAppState.fromJson(Map<String, dynamic> json) { return AccessPolicyCheckResponseResultAppState(
  appUid: json['app_uid'] != null ? AccessUuid.fromJson(json['app_uid'] as String) : null,
  aud: json['aud'] as String?,
  hostname: json['hostname'] as String?,
  name: json['name'] as String?,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  status: json['status'] as String?,
); }

final AccessUuid? appUid;

final String? aud;

final String? hostname;

final String? name;

final List<Map<String,dynamic>>? policies;

final String? status;

Map<String, dynamic> toJson() { return {
  if (appUid != null) 'app_uid': appUid?.toJson(),
  'aud': ?aud,
  'hostname': ?hostname,
  'name': ?name,
  if (policies != null) 'policies': policies?.map((e) => e).toList(),
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'app_uid', 'aud', 'hostname', 'name', 'policies', 'status'}.contains(key)); } 
AccessPolicyCheckResponseResultAppState copyWith({AccessUuid Function()? appUid, String Function()? aud, String Function()? hostname, String Function()? name, List<Map<String, dynamic>> Function()? policies, String Function()? status, }) { return AccessPolicyCheckResponseResultAppState(
  appUid: appUid != null ? appUid() : this.appUid,
  aud: aud != null ? aud() : this.aud,
  hostname: hostname != null ? hostname() : this.hostname,
  name: name != null ? name() : this.name,
  policies: policies != null ? policies() : this.policies,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyCheckResponseResultAppState &&
          appUid == other.appUid &&
          aud == other.aud &&
          hostname == other.hostname &&
          name == other.name &&
          listEquals(policies, other.policies) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(appUid, aud, hostname, name, Object.hashAll(policies ?? const []), status); } 
@override String toString() { return 'AccessPolicyCheckResponseResultAppState(appUid: $appUid, aud: $aud, hostname: $hostname, name: $name, policies: $policies, status: $status)'; } 
 }

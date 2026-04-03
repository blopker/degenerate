// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessActiveSessionsResponseResultMetadataAppsValue {const AccessActiveSessionsResponseResultMetadataAppsValue({this.hostname, this.name, this.type, this.uid, });

factory AccessActiveSessionsResponseResultMetadataAppsValue.fromJson(Map<String, dynamic> json) { return AccessActiveSessionsResponseResultMetadataAppsValue(
  hostname: json['hostname'] as String?,
  name: json['name'] as String?,
  type: json['type'] as String?,
  uid: json['uid'] as String?,
); }

final String? hostname;

final String? name;

final String? type;

final String? uid;

Map<String, dynamic> toJson() { return {
  'hostname': ?hostname,
  'name': ?name,
  'type': ?type,
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hostname', 'name', 'type', 'uid'}.contains(key)); } 
AccessActiveSessionsResponseResultMetadataAppsValue copyWith({String Function()? hostname, String Function()? name, String Function()? type, String Function()? uid, }) { return AccessActiveSessionsResponseResultMetadataAppsValue(
  hostname: hostname != null ? hostname() : this.hostname,
  name: name != null ? name() : this.name,
  type: type != null ? type() : this.type,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionsResponseResultMetadataAppsValue &&
          hostname == other.hostname &&
          name == other.name &&
          type == other.type &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(hostname, name, type, uid); } 
@override String toString() { return 'AccessActiveSessionsResponseResultMetadataAppsValue(hostname: $hostname, name: $name, type: $type, uid: $uid)'; } 
 }

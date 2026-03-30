// GENERATED CODE - DO NOT MODIFY BY HAND

import 'calls_created.dart';import 'calls_identifier.dart';import 'calls_modified.dart';import 'calls_name.dart';/// Bearer token
extension type const CallsSecret(String value) {
factory CallsSecret.fromJson(String json) => CallsSecret(json);

String toJson() => value;

}
final class CallsAppWithSecret {const CallsAppWithSecret({this.created, this.modified, this.name, this.secret, this.uid, });

factory CallsAppWithSecret.fromJson(Map<String, dynamic> json) { return CallsAppWithSecret(
  created: json['created'] != null ? CallsCreated.fromJson(json['created'] as String) : null,
  modified: json['modified'] != null ? CallsModified.fromJson(json['modified'] as String) : null,
  name: json['name'] != null ? CallsName.fromJson(json['name'] as String) : null,
  secret: json['secret'] != null ? CallsSecret.fromJson(json['secret'] as String) : null,
  uid: json['uid'] != null ? CallsIdentifier.fromJson(json['uid'] as String) : null,
); }

final CallsCreated? created;

final CallsModified? modified;

final CallsName? name;

final CallsSecret? secret;

final CallsIdentifier? uid;

Map<String, dynamic> toJson() { return {
  if (created != null) 'created': created?.toJson(),
  if (modified != null) 'modified': modified?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (secret != null) 'secret': secret?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created', 'modified', 'name', 'secret', 'uid'}.contains(key)); } 
CallsAppWithSecret copyWith({CallsCreated Function()? created, CallsModified Function()? modified, CallsName Function()? name, CallsSecret Function()? secret, CallsIdentifier Function()? uid, }) { return CallsAppWithSecret(
  created: created != null ? created() : this.created,
  modified: modified != null ? modified() : this.modified,
  name: name != null ? name() : this.name,
  secret: secret != null ? secret() : this.secret,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsAppWithSecret &&
          created == other.created &&
          modified == other.modified &&
          name == other.name &&
          secret == other.secret &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(created, modified, name, secret, uid); } 
@override String toString() { return 'CallsAppWithSecret(created: $created, modified: $modified, name: $name, secret: $secret, uid: $uid)'; } 
 }

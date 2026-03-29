// GENERATED CODE - DO NOT MODIFY BY HAND

import 'calls_created.dart';import 'calls_identifier.dart';import 'calls_modified.dart';import 'calls_turn_key_name.dart';/// Bearer token
extension type const CallsTurnKey(String value) {
factory CallsTurnKey.fromJson(String json) => CallsTurnKey(json);

String toJson() => value;

}
final class CallsTurnKeyWithKey {const CallsTurnKeyWithKey({this.created, this.key, this.modified, this.name, this.uid, });

factory CallsTurnKeyWithKey.fromJson(Map<String, dynamic> json) { return CallsTurnKeyWithKey(
  created: json['created'] != null ? CallsCreated.fromJson(json['created'] as String) : null,
  key: json['key'] != null ? CallsTurnKey.fromJson(json['key'] as String) : null,
  modified: json['modified'] != null ? CallsModified.fromJson(json['modified'] as String) : null,
  name: json['name'] != null ? CallsTurnKeyName.fromJson(json['name'] as String) : null,
  uid: json['uid'] != null ? CallsIdentifier.fromJson(json['uid'] as String) : null,
); }

/// The date and time the item was created.
final CallsCreated? created;

/// Bearer token
final CallsTurnKey? key;

/// The date and time the item was last modified.
final CallsModified? modified;

/// A short description of a TURN key, not shown to end users.
final CallsTurnKeyName? name;

/// A Cloudflare-generated unique identifier for a item.
final CallsIdentifier? uid;

Map<String, dynamic> toJson() { return {
  if (created != null) 'created': created?.toJson(),
  if (key != null) 'key': key?.toJson(),
  if (modified != null) 'modified': modified?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created', 'key', 'modified', 'name', 'uid'}.contains(key)); } 
CallsTurnKeyWithKey copyWith({CallsCreated Function()? created, CallsTurnKey Function()? key, CallsModified Function()? modified, CallsTurnKeyName Function()? name, CallsIdentifier Function()? uid, }) { return CallsTurnKeyWithKey(
  created: created != null ? created() : this.created,
  key: key != null ? key() : this.key,
  modified: modified != null ? modified() : this.modified,
  name: name != null ? name() : this.name,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeyWithKey &&
          created == other.created &&
          key == other.key &&
          modified == other.modified &&
          name == other.name &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(created, key, modified, name, uid); } 
@override String toString() { return 'CallsTurnKeyWithKey(created: $created, key: $key, modified: $modified, name: $name, uid: $uid)'; } 
 }

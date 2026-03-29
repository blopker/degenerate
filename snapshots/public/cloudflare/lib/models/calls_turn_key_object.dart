// GENERATED CODE - DO NOT MODIFY BY HAND

import 'calls_created.dart';import 'calls_identifier.dart';import 'calls_modified.dart';import 'calls_name.dart';final class CallsTurnKeyObject {const CallsTurnKeyObject({this.created, this.modified, this.name, this.uid, });

factory CallsTurnKeyObject.fromJson(Map<String, dynamic> json) { return CallsTurnKeyObject(
  created: json['created'] != null ? CallsCreated.fromJson(json['created'] as String) : null,
  modified: json['modified'] != null ? CallsModified.fromJson(json['modified'] as String) : null,
  name: json['name'] != null ? CallsName.fromJson(json['name'] as String) : null,
  uid: json['uid'] != null ? CallsIdentifier.fromJson(json['uid'] as String) : null,
); }

/// The date and time the item was created.
final CallsCreated? created;

/// The date and time the item was last modified.
final CallsModified? modified;

/// A short description of Calls app, not shown to end users.
final CallsName? name;

/// A Cloudflare-generated unique identifier for a item.
final CallsIdentifier? uid;

Map<String, dynamic> toJson() { return {
  if (created != null) 'created': created?.toJson(),
  if (modified != null) 'modified': modified?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CallsTurnKeyObject copyWith({CallsCreated Function()? created, CallsModified Function()? modified, CallsName Function()? name, CallsIdentifier Function()? uid, }) { return CallsTurnKeyObject(
  created: created != null ? created() : this.created,
  modified: modified != null ? modified() : this.modified,
  name: name != null ? name() : this.name,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeyObject &&
          created == other.created &&
          modified == other.modified &&
          name == other.name &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(created, modified, name, uid); } 
@override String toString() { return 'CallsTurnKeyObject(created: $created, modified: $modified, name: $name, uid: $uid)'; } 
 }

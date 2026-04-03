// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
@immutable final class Preconditions {const Preconditions({this.resourceVersion, this.uid, });

factory Preconditions.fromJson(Map<String, dynamic> json) { return Preconditions(
  resourceVersion: json['resourceVersion'] as String?,
  uid: json['uid'] as String?,
); }

/// Specifies the target ResourceVersion
final String? resourceVersion;

/// Specifies the target UID.
final String? uid;

Map<String, dynamic> toJson() { return {
  'resourceVersion': ?resourceVersion,
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'resourceVersion', 'uid'}.contains(key)); } 
Preconditions copyWith({String Function()? resourceVersion, String Function()? uid, }) { return Preconditions(
  resourceVersion: resourceVersion != null ? resourceVersion() : this.resourceVersion,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Preconditions &&
          resourceVersion == other.resourceVersion &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(resourceVersion, uid); } 
@override String toString() { return 'Preconditions(resourceVersion: $resourceVersion, uid: $uid)'; } 
 }

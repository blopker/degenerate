// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The metadata of the SCIM resource.
@immutable final class AccessMeta {const AccessMeta({this.created, this.lastModified, });

factory AccessMeta.fromJson(Map<String, dynamic> json) { return AccessMeta(
  created: json['created'] != null ? DateTime.parse(json['created'] as String) : null,
  lastModified: json['lastModified'] != null ? DateTime.parse(json['lastModified'] as String) : null,
); }

/// The timestamp of when the SCIM resource was created.
final DateTime? created;

/// The timestamp of when the SCIM resource was last modified.
final DateTime? lastModified;

Map<String, dynamic> toJson() { return {
  if (created != null) 'created': created?.toIso8601String(),
  if (lastModified != null) 'lastModified': lastModified?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created', 'lastModified'}.contains(key)); } 
AccessMeta copyWith({DateTime Function()? created, DateTime Function()? lastModified, }) { return AccessMeta(
  created: created != null ? created() : this.created,
  lastModified: lastModified != null ? lastModified() : this.lastModified,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessMeta &&
          created == other.created &&
          lastModified == other.lastModified; } 
@override int get hashCode { return Object.hash(created, lastModified); } 
@override String toString() { return 'AccessMeta(created: $created, lastModified: $lastModified)'; } 
 }

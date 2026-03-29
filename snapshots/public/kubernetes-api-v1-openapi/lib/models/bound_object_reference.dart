// GENERATED CODE - DO NOT MODIFY BY HAND

/// BoundObjectReference is a reference to an object that a token is bound to.
final class BoundObjectReference {const BoundObjectReference({this.apiVersion, this.kind, this.name, this.uid, });

factory BoundObjectReference.fromJson(Map<String, dynamic> json) { return BoundObjectReference(
  apiVersion: json['apiVersion'] as String?,
  kind: json['kind'] as String?,
  name: json['name'] as String?,
  uid: json['uid'] as String?,
); }

/// apiVersion is API version of the referent.
final String? apiVersion;

/// kind of the referent. Valid kinds are 'Pod' and 'Secret'.
final String? kind;

/// name of the referent.
final String? name;

/// uid of the referent.
final String? uid;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'kind': ?kind,
  'name': ?name,
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apiVersion', 'kind', 'name', 'uid'}.contains(key)); } 
BoundObjectReference copyWith({String Function()? apiVersion, String Function()? kind, String Function()? name, String Function()? uid, }) { return BoundObjectReference(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  kind: kind != null ? kind() : this.kind,
  name: name != null ? name() : this.name,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BoundObjectReference &&
          apiVersion == other.apiVersion &&
          kind == other.kind &&
          name == other.name &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash(apiVersion, kind, name, uid); } 
@override String toString() { return 'BoundObjectReference(apiVersion: $apiVersion, kind: $kind, name: $name, uid: $uid)'; } 
 }

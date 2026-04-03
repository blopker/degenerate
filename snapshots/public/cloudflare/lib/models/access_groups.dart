// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_id.dart';import 'access_meta.dart';/// The IdP-generated Id of the SCIM resource.
extension type const AccessExternalId(String value) {
factory AccessExternalId.fromJson(String json) => AccessExternalId(json);

String toJson() => value;

}
@immutable final class AccessGroups {const AccessGroups({this.displayName, this.externalId, this.id, this.meta, this.schemas, });

factory AccessGroups.fromJson(Map<String, dynamic> json) { return AccessGroups(
  displayName: json['displayName'] as String?,
  externalId: json['externalId'] != null ? AccessExternalId.fromJson(json['externalId'] as String) : null,
  id: json['id'] != null ? AccessId.fromJson(json['id'] as String) : null,
  meta: json['meta'] != null ? AccessMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
  schemas: (json['schemas'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The display name of the SCIM Group resource.
final String? displayName;

/// The IdP-generated Id of the SCIM resource.
final AccessExternalId? externalId;

final AccessId? id;

final AccessMeta? meta;

/// The list of URIs which indicate the attributes contained within a SCIM resource.
final List<String>? schemas;

Map<String, dynamic> toJson() { return {
  'displayName': ?displayName,
  if (externalId != null) 'externalId': externalId?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (meta != null) 'meta': meta?.toJson(),
  'schemas': ?schemas,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'displayName', 'externalId', 'id', 'meta', 'schemas'}.contains(key)); } 
AccessGroups copyWith({String Function()? displayName, AccessExternalId Function()? externalId, AccessId Function()? id, AccessMeta Function()? meta, List<String> Function()? schemas, }) { return AccessGroups(
  displayName: displayName != null ? displayName() : this.displayName,
  externalId: externalId != null ? externalId() : this.externalId,
  id: id != null ? id() : this.id,
  meta: meta != null ? meta() : this.meta,
  schemas: schemas != null ? schemas() : this.schemas,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGroups &&
          displayName == other.displayName &&
          externalId == other.externalId &&
          id == other.id &&
          meta == other.meta &&
          listEquals(schemas, other.schemas); } 
@override int get hashCode { return Object.hash(displayName, externalId, id, meta, Object.hashAll(schemas ?? const [])); } 
@override String toString() { return 'AccessGroups(displayName: $displayName, externalId: $externalId, id: $id, meta: $meta, schemas: $schemas)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_precedence.dart';import 'access_schemas_uuid.dart';/// A JSON that links a reusable policy to an application.
@immutable final class AccessAppPolicyLink {const AccessAppPolicyLink({this.id, this.precedence, });

factory AccessAppPolicyLink.fromJson(Map<String, dynamic> json) { return AccessAppPolicyLink(
  id: json['id'] != null ? AccessSchemasUuid.fromJson(json['id'] as String) : null,
  precedence: json['precedence'] != null ? AccessPrecedence.fromJson(json['precedence'] as num) : null,
); }

final AccessSchemasUuid? id;

final AccessPrecedence? precedence;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (precedence != null) 'precedence': precedence?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'precedence'}.contains(key)); } 
AccessAppPolicyLink copyWith({AccessSchemasUuid Function()? id, AccessPrecedence Function()? precedence, }) { return AccessAppPolicyLink(
  id: id != null ? id() : this.id,
  precedence: precedence != null ? precedence() : this.precedence,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppPolicyLink &&
          id == other.id &&
          precedence == other.precedence; } 
@override int get hashCode { return Object.hash(id, precedence); } 
@override String toString() { return 'AccessAppPolicyLink(id: $id, precedence: $precedence)'; } 
 }

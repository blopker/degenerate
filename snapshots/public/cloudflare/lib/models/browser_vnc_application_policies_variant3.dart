// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_uuid.dart';/// An application-scoped policy JSON. If the policy does not yet exist, it will be created.
@immutable final class BrowserVncApplicationPoliciesVariant3 {const BrowserVncApplicationPoliciesVariant3({this.id});

factory BrowserVncApplicationPoliciesVariant3.fromJson(Map<String, dynamic> json) { return BrowserVncApplicationPoliciesVariant3(
  id: json['id'] != null ? AccessSchemasUuid.fromJson(json['id'] as String) : null,
); }

final AccessSchemasUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
BrowserVncApplicationPoliciesVariant3 copyWith({AccessSchemasUuid Function()? id}) { return BrowserVncApplicationPoliciesVariant3(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrowserVncApplicationPoliciesVariant3 &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'BrowserVncApplicationPoliciesVariant3(id: $id)'; } 
 }

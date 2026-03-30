// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_uuid.dart';final class AccessReusablePoliciesComponentsSchemasIdResponseResult {const AccessReusablePoliciesComponentsSchemasIdResponseResult({this.id});

factory AccessReusablePoliciesComponentsSchemasIdResponseResult.fromJson(Map<String, dynamic> json) { return AccessReusablePoliciesComponentsSchemasIdResponseResult(
  id: json['id'] != null ? AccessSchemasUuid.fromJson(json['id'] as String) : null,
); }

final AccessSchemasUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AccessReusablePoliciesComponentsSchemasIdResponseResult copyWith({AccessSchemasUuid Function()? id}) { return AccessReusablePoliciesComponentsSchemasIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessReusablePoliciesComponentsSchemasIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessReusablePoliciesComponentsSchemasIdResponseResult(id: $id)'; } 
 }

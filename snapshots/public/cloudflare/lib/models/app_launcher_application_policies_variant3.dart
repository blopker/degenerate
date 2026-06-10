// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_uuid.dart';/// An application-scoped policy JSON. If the policy does not yet exist, it will be created.
@immutable final class AppLauncherApplicationPoliciesVariant3 {const AppLauncherApplicationPoliciesVariant3({this.id});

factory AppLauncherApplicationPoliciesVariant3.fromJson(Map<String, dynamic> json) { return AppLauncherApplicationPoliciesVariant3(
  id: json['id'] != null ? AccessSchemasUuid.fromJson(json['id'] as String) : null,
); }

final AccessSchemasUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AppLauncherApplicationPoliciesVariant3 copyWith({AccessSchemasUuid Function()? id}) { return AppLauncherApplicationPoliciesVariant3(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppLauncherApplicationPoliciesVariant3 &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AppLauncherApplicationPoliciesVariant3(id: $id)'; } 
 }

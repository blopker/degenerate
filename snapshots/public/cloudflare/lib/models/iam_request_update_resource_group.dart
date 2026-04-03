// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_create_scope.dart';@immutable final class IamRequestUpdateResourceGroup {const IamRequestUpdateResourceGroup({this.name, this.scope, });

factory IamRequestUpdateResourceGroup.fromJson(Map<String, dynamic> json) { return IamRequestUpdateResourceGroup(
  name: json['name'] as String?,
  scope: json['scope'] != null ? IamCreateScope.fromJson(json['scope'] as Map<String, dynamic>) : null,
); }

/// Name of the resource group
final String? name;

final IamCreateScope? scope;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (scope != null) 'scope': scope?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'scope'}.contains(key)); } 
IamRequestUpdateResourceGroup copyWith({String Function()? name, IamCreateScope Function()? scope, }) { return IamRequestUpdateResourceGroup(
  name: name != null ? name() : this.name,
  scope: scope != null ? scope() : this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamRequestUpdateResourceGroup &&
          name == other.name &&
          scope == other.scope; } 
@override int get hashCode { return Object.hash(name, scope); } 
@override String toString() { return 'IamRequestUpdateResourceGroup(name: $name, scope: $scope)'; } 
 }

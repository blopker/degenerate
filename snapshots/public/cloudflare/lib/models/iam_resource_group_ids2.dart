// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_common_components_schemas_identifier.dart';/// A group of scoped resources.
@immutable final class IamResourceGroupIds2 {const IamResourceGroupIds2({required this.id});

factory IamResourceGroupIds2.fromJson(Map<String, dynamic> json) { return IamResourceGroupIds2(
  id: IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String),
); }

/// Identifier
final IamCommonComponentsSchemasIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
IamResourceGroupIds2 copyWith({IamCommonComponentsSchemasIdentifier? id}) { return IamResourceGroupIds2(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamResourceGroupIds2 &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'IamResourceGroupIds2(id: $id)'; } 
 }

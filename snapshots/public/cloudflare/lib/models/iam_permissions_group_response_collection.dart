// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_permissions_group_response_collection_result.dart';@immutable final class IamPermissionsGroupResponseCollection {const IamPermissionsGroupResponseCollection({this.result});

factory IamPermissionsGroupResponseCollection.fromJson(Map<String, dynamic> json) { return IamPermissionsGroupResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamPermissionsGroupResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamPermissionsGroupResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamPermissionsGroupResponseCollection copyWith({List<IamPermissionsGroupResponseCollectionResult> Function()? result}) { return IamPermissionsGroupResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamPermissionsGroupResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamPermissionsGroupResponseCollection(result: $result)'; } 
 }

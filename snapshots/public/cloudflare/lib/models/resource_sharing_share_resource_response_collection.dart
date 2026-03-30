// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_share_resource_object.dart';final class ResourceSharingShareResourceResponseCollection {const ResourceSharingShareResourceResponseCollection({this.result});

factory ResourceSharingShareResourceResponseCollection.fromJson(Map<String, dynamic> json) { return ResourceSharingShareResourceResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareResourceObject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ResourceSharingShareResourceObject>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ResourceSharingShareResourceResponseCollection copyWith({List<ResourceSharingShareResourceObject> Function()? result}) { return ResourceSharingShareResourceResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareResourceResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ResourceSharingShareResourceResponseCollection(result: $result)'; } 
 }

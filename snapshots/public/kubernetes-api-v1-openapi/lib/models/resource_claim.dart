// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ResourceClaim references one entry in PodSpec.ResourceClaims.
@immutable final class ResourceClaim {const ResourceClaim({this.name = '', this.request, });

factory ResourceClaim.fromJson(Map<String, dynamic> json) { return ResourceClaim(
  name: json['name'] as String,
  request: json['request'] as String?,
); }

/// Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
final String name;

/// Request is the name chosen for a request in the referenced claim. If empty, everything from the claim is made available, otherwise only the result of this request.
final String? request;

Map<String, dynamic> toJson() { return {
  'name': name,
  'request': ?request,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
ResourceClaim copyWith({String? name, String Function()? request, }) { return ResourceClaim(
  name: name ?? this.name,
  request: request != null ? request() : this.request,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceClaim &&
          name == other.name &&
          request == other.request; } 
@override int get hashCode { return Object.hash(name, request); } 
@override String toString() { return 'ResourceClaim(name: $name, request: $request)'; } 
 }

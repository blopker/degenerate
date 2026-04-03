// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrgsConvertMemberToOutsideCollaboratorRequest {const OrgsConvertMemberToOutsideCollaboratorRequest({this.$async = false});

factory OrgsConvertMemberToOutsideCollaboratorRequest.fromJson(Map<String, dynamic> json) { return OrgsConvertMemberToOutsideCollaboratorRequest(
  $async: json.containsKey('async') ? json['async'] as bool : false,
); }

/// When set to `true`, the request will be performed asynchronously. Returns a 202 status code when the job is successfully queued.
final bool $async;

Map<String, dynamic> toJson() { return {
  'async': $async,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'async'}.contains(key)); } 
OrgsConvertMemberToOutsideCollaboratorRequest copyWith({bool Function()? $async}) { return OrgsConvertMemberToOutsideCollaboratorRequest(
  $async: $async != null ? $async() : this.$async,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsConvertMemberToOutsideCollaboratorRequest &&
          $async == other.$async; } 
@override int get hashCode { return $async.hashCode; } 
@override String toString() { return 'OrgsConvertMemberToOutsideCollaboratorRequest(\$async: ${$async})'; } 
 }

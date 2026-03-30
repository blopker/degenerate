// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_acl.dart';final class MagicAclSingleResponse {const MagicAclSingleResponse({this.result});

factory MagicAclSingleResponse.fromJson(Map<String, dynamic> json) { return MagicAclSingleResponse(
  result: json['result'] != null ? MagicAcl.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicAcl? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicAclSingleResponse copyWith({MagicAcl Function()? result}) { return MagicAclSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAclSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicAclSingleResponse(result: $result)'; } 
 }

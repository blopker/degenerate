// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_acl.dart';@immutable final class MagicAclModifiedResponse {const MagicAclModifiedResponse({this.result});

factory MagicAclModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicAclModifiedResponse(
  result: json['result'] != null ? MagicAcl.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicAcl? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicAclModifiedResponse copyWith({MagicAcl Function()? result}) { return MagicAclModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAclModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicAclModifiedResponse(result: $result)'; } 
 }

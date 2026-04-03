// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_acl.dart';@immutable final class MagicAclsCollectionResponse {const MagicAclsCollectionResponse({this.result});

factory MagicAclsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicAclsCollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MagicAcl.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicAcl>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicAclsCollectionResponse copyWith({List<MagicAcl> Function()? result}) { return MagicAclsCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAclsCollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MagicAclsCollectionResponse(result: $result)'; } 
 }

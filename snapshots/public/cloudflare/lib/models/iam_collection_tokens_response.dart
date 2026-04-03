// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_token_base.dart';@immutable final class IamCollectionTokensResponse {const IamCollectionTokensResponse({this.result});

factory IamCollectionTokensResponse.fromJson(Map<String, dynamic> json) { return IamCollectionTokensResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamTokenBase.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamTokenBase>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionTokensResponse copyWith({List<IamTokenBase> Function()? result}) { return IamCollectionTokensResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionTokensResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionTokensResponse(result: $result)'; } 
 }

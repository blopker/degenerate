// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_token_base.dart';@immutable final class IamSingleTokenResponse {const IamSingleTokenResponse({this.result});

factory IamSingleTokenResponse.fromJson(Map<String, dynamic> json) { return IamSingleTokenResponse(
  result: json['result'] != null ? IamTokenBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamTokenBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleTokenResponse copyWith({IamTokenBase Function()? result}) { return IamSingleTokenResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleTokenResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleTokenResponse(result: $result)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_token_with_value.dart';@immutable final class IamSingleTokenCreateResponse {const IamSingleTokenCreateResponse({this.result});

factory IamSingleTokenCreateResponse.fromJson(Map<String, dynamic> json) { return IamSingleTokenCreateResponse(
  result: json['result'] != null ? IamTokenWithValue.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamTokenWithValue? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleTokenCreateResponse copyWith({IamTokenWithValue Function()? result}) { return IamSingleTokenCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleTokenCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleTokenCreateResponse(result: $result)'; } 
 }

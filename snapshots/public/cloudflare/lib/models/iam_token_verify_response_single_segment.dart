// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_token_verify_response_single_segment_result.dart';final class IamTokenVerifyResponseSingleSegment {const IamTokenVerifyResponseSingleSegment({this.result});

factory IamTokenVerifyResponseSingleSegment.fromJson(Map<String, dynamic> json) { return IamTokenVerifyResponseSingleSegment(
  result: json['result'] != null ? IamTokenVerifyResponseSingleSegmentResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamTokenVerifyResponseSingleSegmentResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamTokenVerifyResponseSingleSegment copyWith({IamTokenVerifyResponseSingleSegmentResult Function()? result}) { return IamTokenVerifyResponseSingleSegment(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamTokenVerifyResponseSingleSegment &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamTokenVerifyResponseSingleSegment(result: $result)'; } 
 }

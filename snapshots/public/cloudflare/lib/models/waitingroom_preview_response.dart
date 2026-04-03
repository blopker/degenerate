// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_preview_response_result.dart';@immutable final class WaitingroomPreviewResponse {const WaitingroomPreviewResponse({this.result});

factory WaitingroomPreviewResponse.fromJson(Map<String, dynamic> json) { return WaitingroomPreviewResponse(
  result: json['result'] != null ? WaitingroomPreviewResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WaitingroomPreviewResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomPreviewResponse copyWith({WaitingroomPreviewResponseResult Function()? result}) { return WaitingroomPreviewResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomPreviewResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomPreviewResponse(result: $result)'; } 
 }

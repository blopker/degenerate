// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_status_response_result.dart';final class WaitingroomStatusResponse {const WaitingroomStatusResponse({this.result});

factory WaitingroomStatusResponse.fromJson(Map<String, dynamic> json) { return WaitingroomStatusResponse(
  result: json['result'] != null ? WaitingroomStatusResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WaitingroomStatusResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomStatusResponse copyWith({WaitingroomStatusResponseResult Function()? result}) { return WaitingroomStatusResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomStatusResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomStatusResponse(result: $result)'; } 
 }

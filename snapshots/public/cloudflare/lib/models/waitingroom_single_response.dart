// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_waitingroom.dart';final class WaitingroomSingleResponse {const WaitingroomSingleResponse({this.result});

factory WaitingroomSingleResponse.fromJson(Map<String, dynamic> json) { return WaitingroomSingleResponse(
  result: json['result'] != null ? WaitingroomWaitingroom.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WaitingroomWaitingroom? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomSingleResponse copyWith({WaitingroomWaitingroom Function()? result}) { return WaitingroomSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomSingleResponse(result: $result)'; } 
 }

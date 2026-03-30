// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_waiting_room_id_response_result.dart';final class WaitingroomWaitingRoomIdResponse {const WaitingroomWaitingRoomIdResponse({this.result});

factory WaitingroomWaitingRoomIdResponse.fromJson(Map<String, dynamic> json) { return WaitingroomWaitingRoomIdResponse(
  result: json['result'] != null ? WaitingroomWaitingRoomIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WaitingroomWaitingRoomIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomWaitingRoomIdResponse copyWith({WaitingroomWaitingRoomIdResponseResult Function()? result}) { return WaitingroomWaitingRoomIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomWaitingRoomIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomWaitingRoomIdResponse(result: $result)'; } 
 }

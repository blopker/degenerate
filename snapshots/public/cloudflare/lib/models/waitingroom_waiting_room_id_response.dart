// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_waiting_room_id_response_result.dart';@immutable final class WaitingroomWaitingRoomIdResponse {const WaitingroomWaitingRoomIdResponse({required this.result});

factory WaitingroomWaitingRoomIdResponse.fromJson(Map<String, dynamic> json) { return WaitingroomWaitingRoomIdResponse(
  result: WaitingroomWaitingRoomIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final WaitingroomWaitingRoomIdResponseResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
WaitingroomWaitingRoomIdResponse copyWith({WaitingroomWaitingRoomIdResponseResult? result}) { return WaitingroomWaitingRoomIdResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomWaitingRoomIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomWaitingRoomIdResponse(result: $result)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_event_id_response_result.dart';final class WaitingroomEventIdResponse {const WaitingroomEventIdResponse({this.result});

factory WaitingroomEventIdResponse.fromJson(Map<String, dynamic> json) { return WaitingroomEventIdResponse(
  result: json['result'] != null ? WaitingroomEventIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WaitingroomEventIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomEventIdResponse copyWith({WaitingroomEventIdResponseResult Function()? result}) { return WaitingroomEventIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomEventIdResponse(result: $result)'; } 
 }

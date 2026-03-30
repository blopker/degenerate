// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_event_result.dart';final class WaitingroomEventResponse {const WaitingroomEventResponse({this.result});

factory WaitingroomEventResponse.fromJson(Map<String, dynamic> json) { return WaitingroomEventResponse(
  result: json['result'] != null ? WaitingroomEventResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WaitingroomEventResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomEventResponse copyWith({WaitingroomEventResult Function()? result}) { return WaitingroomEventResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomEventResponse(result: $result)'; } 
 }

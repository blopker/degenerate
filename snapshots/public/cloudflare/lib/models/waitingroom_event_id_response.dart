// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_event_id_response_result.dart';@immutable final class WaitingroomEventIdResponse {const WaitingroomEventIdResponse({required this.result});

factory WaitingroomEventIdResponse.fromJson(Map<String, dynamic> json) { return WaitingroomEventIdResponse(
  result: WaitingroomEventIdResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final WaitingroomEventIdResponseResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
WaitingroomEventIdResponse copyWith({WaitingroomEventIdResponseResult? result}) { return WaitingroomEventIdResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomEventIdResponse(result: $result)'; } 
 }

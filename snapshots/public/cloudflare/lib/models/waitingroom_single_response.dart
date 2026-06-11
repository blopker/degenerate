// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_waitingroom.dart';@immutable final class WaitingroomSingleResponse {const WaitingroomSingleResponse({required this.result});

factory WaitingroomSingleResponse.fromJson(Map<String, dynamic> json) { return WaitingroomSingleResponse(
  result: WaitingroomWaitingroom.fromJson(json['result'] as Map<String, dynamic>),
); }

final WaitingroomWaitingroom result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
WaitingroomSingleResponse copyWith({WaitingroomWaitingroom? result}) { return WaitingroomSingleResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomSingleResponse(result: $result)'; } 
 }

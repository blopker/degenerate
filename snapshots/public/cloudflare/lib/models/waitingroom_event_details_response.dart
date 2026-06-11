// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_event_details_result.dart';@immutable final class WaitingroomEventDetailsResponse {const WaitingroomEventDetailsResponse({required this.result});

factory WaitingroomEventDetailsResponse.fromJson(Map<String, dynamic> json) { return WaitingroomEventDetailsResponse(
  result: WaitingroomEventDetailsResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final WaitingroomEventDetailsResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
WaitingroomEventDetailsResponse copyWith({WaitingroomEventDetailsResult? result}) { return WaitingroomEventDetailsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WaitingroomEventDetailsResponse(result: $result)'; } 
 }

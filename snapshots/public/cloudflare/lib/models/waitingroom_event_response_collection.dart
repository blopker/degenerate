// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_event_result.dart';final class WaitingroomEventResponseCollection {const WaitingroomEventResponseCollection({this.result});

factory WaitingroomEventResponseCollection.fromJson(Map<String, dynamic> json) { return WaitingroomEventResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => WaitingroomEventResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WaitingroomEventResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomEventResponseCollection copyWith({List<WaitingroomEventResult> Function()? result}) { return WaitingroomEventResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'WaitingroomEventResponseCollection(result: $result)'; } 
 }

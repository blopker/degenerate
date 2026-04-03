// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_waitingroom.dart';@immutable final class WaitingroomResponseCollection {const WaitingroomResponseCollection({this.result});

factory WaitingroomResponseCollection.fromJson(Map<String, dynamic> json) { return WaitingroomResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => WaitingroomWaitingroom.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WaitingroomWaitingroom>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WaitingroomResponseCollection copyWith({List<WaitingroomWaitingroom> Function()? result}) { return WaitingroomResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'WaitingroomResponseCollection(result: $result)'; } 
 }

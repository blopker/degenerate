// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_event_id.dart';@immutable final class WaitingroomEventIdResponseResult {const WaitingroomEventIdResponseResult({this.id});

factory WaitingroomEventIdResponseResult.fromJson(Map<String, dynamic> json) { return WaitingroomEventIdResponseResult(
  id: json['id'] != null ? WaitingroomEventId.fromJson(json['id'] as String) : null,
); }

final WaitingroomEventId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
WaitingroomEventIdResponseResult copyWith({WaitingroomEventId Function()? id}) { return WaitingroomEventIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomEventIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WaitingroomEventIdResponseResult(id: $id)'; } 
 }

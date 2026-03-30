// GENERATED CODE - DO NOT MODIFY BY HAND

import 'waitingroom_waiting_room_id.dart';final class WaitingroomWaitingRoomIdResponseResult {const WaitingroomWaitingRoomIdResponseResult({this.id});

factory WaitingroomWaitingRoomIdResponseResult.fromJson(Map<String, dynamic> json) { return WaitingroomWaitingRoomIdResponseResult(
  id: json['id'] != null ? WaitingroomWaitingRoomId.fromJson(json['id'] as String) : null,
); }

final WaitingroomWaitingRoomId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
WaitingroomWaitingRoomIdResponseResult copyWith({WaitingroomWaitingRoomId Function()? id}) { return WaitingroomWaitingRoomIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomWaitingRoomIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WaitingroomWaitingRoomIdResponseResult(id: $id)'; } 
 }

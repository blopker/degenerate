// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'active_detail.dart';
import 'ended_detail.dart';
import 'waiting_room_detail.dart';

sealed class RoomStateStatusDetail {
  const RoomStateStatusDetail();

  /// Deserialize from JSON, dispatching on the `type` discriminator.
  factory RoomStateStatusDetail.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'active' => RoomStateStatusDetailActive.fromJson(json),
      'ended' => RoomStateStatusDetailEnded.fromJson(json),
      'waiting_room' => RoomStateStatusDetailWaitingRoom.fromJson(json),
      _ => RoomStateStatusDetail$Unknown(json),
    };
  }

  /// The discriminator value identifying this variant.
  String get type;
  Map<String, dynamic> toJson();

  /// Whether this variant is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return this is RoomStateStatusDetail$Unknown;
  }
}

@immutable
final class RoomStateStatusDetailActive extends RoomStateStatusDetail {
  const RoomStateStatusDetailActive(this.activeDetail);

  factory RoomStateStatusDetailActive.fromJson(Map<String, dynamic> json) {
    return RoomStateStatusDetailActive(ActiveDetail.fromJson(json));
  }

  final ActiveDetail activeDetail;

  @override
  String get type {
    return 'active';
  }

  @override
  Map<String, dynamic> toJson() {
    return {...activeDetail.toJson(), 'type': type};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is RoomStateStatusDetailActive &&
            activeDetail == other.activeDetail;
  }

  @override
  int get hashCode {
    return activeDetail.hashCode;
  }

  @override
  String toString() {
    return 'RoomStateStatusDetailActive(activeDetail: $activeDetail)';
  }
}

@immutable
final class RoomStateStatusDetailEnded extends RoomStateStatusDetail {
  const RoomStateStatusDetailEnded(this.endedDetail);

  factory RoomStateStatusDetailEnded.fromJson(Map<String, dynamic> json) {
    return RoomStateStatusDetailEnded(EndedDetail.fromJson(json));
  }

  final EndedDetail endedDetail;

  @override
  String get type {
    return 'ended';
  }

  @override
  Map<String, dynamic> toJson() {
    return {...endedDetail.toJson(), 'type': type};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is RoomStateStatusDetailEnded && endedDetail == other.endedDetail;
  }

  @override
  int get hashCode {
    return endedDetail.hashCode;
  }

  @override
  String toString() {
    return 'RoomStateStatusDetailEnded(endedDetail: $endedDetail)';
  }
}

@immutable
final class RoomStateStatusDetailWaitingRoom extends RoomStateStatusDetail {
  const RoomStateStatusDetailWaitingRoom(this.waitingRoomDetail);

  factory RoomStateStatusDetailWaitingRoom.fromJson(Map<String, dynamic> json) {
    return RoomStateStatusDetailWaitingRoom(WaitingRoomDetail.fromJson(json));
  }

  final WaitingRoomDetail waitingRoomDetail;

  @override
  String get type {
    return 'waiting_room';
  }

  @override
  Map<String, dynamic> toJson() {
    return {...waitingRoomDetail.toJson(), 'type': type};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is RoomStateStatusDetailWaitingRoom &&
            waitingRoomDetail == other.waitingRoomDetail;
  }

  @override
  int get hashCode {
    return waitingRoomDetail.hashCode;
  }

  @override
  String toString() {
    return 'RoomStateStatusDetailWaitingRoom(waitingRoomDetail: $waitingRoomDetail)';
  }
}

/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable
final class RoomStateStatusDetail$Unknown extends RoomStateStatusDetail {
  const RoomStateStatusDetail$Unknown(this.json);

  final Map<String, dynamic> json;

  @override
  String get type {
    return json['type'] as String? ?? '';
  }

  @override
  Map<String, dynamic> toJson() {
    return json;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is RoomStateStatusDetail$Unknown && json == other.json;
  }

  @override
  int get hashCode {
    return json.hashCode;
  }

  @override
  String toString() {
    return 'RoomStateStatusDetail.unknown($json)';
  }
}

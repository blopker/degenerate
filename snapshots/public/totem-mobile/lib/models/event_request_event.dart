// GENERATED CODE - DO NOT MODIFY BY HAND

import 'accept_stick_event.dart';
import 'ban_participant_event.dart';
import 'end_room_event.dart';
import 'force_pass_stick_event.dart';
import 'pass_stick_event.dart';
import 'reorder_event.dart';
import 'start_room_event.dart';
import 'unban_participant_event.dart';

sealed class EventRequestEvent {
  const EventRequestEvent();

  /// Deserialize from JSON, dispatching on the `type` discriminator.
  factory EventRequestEvent.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'accept_stick' => EventRequestEventAcceptStick.fromJson(json),
      'ban_participant' => EventRequestEventBanParticipant.fromJson(json),
      'end_room' => EventRequestEventEndRoom.fromJson(json),
      'force_pass_stick' => EventRequestEventForcePassStick.fromJson(json),
      'pass_stick' => EventRequestEventPassStick.fromJson(json),
      'reorder' => EventRequestEventReorder.fromJson(json),
      'start_room' => EventRequestEventStartRoom.fromJson(json),
      'unban_participant' => EventRequestEventUnbanParticipant.fromJson(json),
      _ => EventRequestEvent$Unknown(json),
    };
  }

  /// The discriminator value identifying this variant.
  String get type;
  Map<String, dynamic> toJson();

  /// Whether this variant is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return this is EventRequestEvent$Unknown;
  }
}

final class EventRequestEventAcceptStick extends EventRequestEvent {
  const EventRequestEventAcceptStick(this.acceptStickEvent);

  factory EventRequestEventAcceptStick.fromJson(Map<String, dynamic> json) {
    return EventRequestEventAcceptStick(AcceptStickEvent.fromJson(json));
  }

  final AcceptStickEvent acceptStickEvent;

  @override
  String get type {
    return 'accept_stick';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...acceptStickEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventAcceptStick &&
            acceptStickEvent == other.acceptStickEvent;
  }

  @override
  int get hashCode {
    return acceptStickEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventAcceptStick(acceptStickEvent: $acceptStickEvent)';
  }
}

final class EventRequestEventBanParticipant extends EventRequestEvent {
  const EventRequestEventBanParticipant(this.banParticipantEvent);

  factory EventRequestEventBanParticipant.fromJson(Map<String, dynamic> json) {
    return EventRequestEventBanParticipant(BanParticipantEvent.fromJson(json));
  }

  final BanParticipantEvent banParticipantEvent;

  @override
  String get type {
    return 'ban_participant';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...banParticipantEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventBanParticipant &&
            banParticipantEvent == other.banParticipantEvent;
  }

  @override
  int get hashCode {
    return banParticipantEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventBanParticipant(banParticipantEvent: $banParticipantEvent)';
  }
}

final class EventRequestEventEndRoom extends EventRequestEvent {
  const EventRequestEventEndRoom(this.endRoomEvent);

  factory EventRequestEventEndRoom.fromJson(Map<String, dynamic> json) {
    return EventRequestEventEndRoom(EndRoomEvent.fromJson(json));
  }

  final EndRoomEvent endRoomEvent;

  @override
  String get type {
    return 'end_room';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...endRoomEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventEndRoom && endRoomEvent == other.endRoomEvent;
  }

  @override
  int get hashCode {
    return endRoomEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventEndRoom(endRoomEvent: $endRoomEvent)';
  }
}

final class EventRequestEventForcePassStick extends EventRequestEvent {
  const EventRequestEventForcePassStick(this.forcePassStickEvent);

  factory EventRequestEventForcePassStick.fromJson(Map<String, dynamic> json) {
    return EventRequestEventForcePassStick(ForcePassStickEvent.fromJson(json));
  }

  final ForcePassStickEvent forcePassStickEvent;

  @override
  String get type {
    return 'force_pass_stick';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...forcePassStickEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventForcePassStick &&
            forcePassStickEvent == other.forcePassStickEvent;
  }

  @override
  int get hashCode {
    return forcePassStickEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventForcePassStick(forcePassStickEvent: $forcePassStickEvent)';
  }
}

final class EventRequestEventPassStick extends EventRequestEvent {
  const EventRequestEventPassStick(this.passStickEvent);

  factory EventRequestEventPassStick.fromJson(Map<String, dynamic> json) {
    return EventRequestEventPassStick(PassStickEvent.fromJson(json));
  }

  final PassStickEvent passStickEvent;

  @override
  String get type {
    return 'pass_stick';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...passStickEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventPassStick &&
            passStickEvent == other.passStickEvent;
  }

  @override
  int get hashCode {
    return passStickEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventPassStick(passStickEvent: $passStickEvent)';
  }
}

final class EventRequestEventReorder extends EventRequestEvent {
  const EventRequestEventReorder(this.reorderEvent);

  factory EventRequestEventReorder.fromJson(Map<String, dynamic> json) {
    return EventRequestEventReorder(ReorderEvent.fromJson(json));
  }

  final ReorderEvent reorderEvent;

  @override
  String get type {
    return 'reorder';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...reorderEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventReorder && reorderEvent == other.reorderEvent;
  }

  @override
  int get hashCode {
    return reorderEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventReorder(reorderEvent: $reorderEvent)';
  }
}

final class EventRequestEventStartRoom extends EventRequestEvent {
  const EventRequestEventStartRoom(this.startRoomEvent);

  factory EventRequestEventStartRoom.fromJson(Map<String, dynamic> json) {
    return EventRequestEventStartRoom(StartRoomEvent.fromJson(json));
  }

  final StartRoomEvent startRoomEvent;

  @override
  String get type {
    return 'start_room';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...startRoomEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventStartRoom &&
            startRoomEvent == other.startRoomEvent;
  }

  @override
  int get hashCode {
    return startRoomEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventStartRoom(startRoomEvent: $startRoomEvent)';
  }
}

final class EventRequestEventUnbanParticipant extends EventRequestEvent {
  const EventRequestEventUnbanParticipant(this.unbanParticipantEvent);

  factory EventRequestEventUnbanParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return EventRequestEventUnbanParticipant(
      UnbanParticipantEvent.fromJson(json),
    );
  }

  final UnbanParticipantEvent unbanParticipantEvent;

  @override
  String get type {
    return 'unban_participant';
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': type, ...unbanParticipantEvent.toJson()};
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EventRequestEventUnbanParticipant &&
            unbanParticipantEvent == other.unbanParticipantEvent;
  }

  @override
  int get hashCode {
    return unbanParticipantEvent.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEventUnbanParticipant(unbanParticipantEvent: $unbanParticipantEvent)';
  }
}

/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class EventRequestEvent$Unknown extends EventRequestEvent {
  const EventRequestEvent$Unknown(this.json);

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
        other is EventRequestEvent$Unknown && json == other.json;
  }

  @override
  int get hashCode {
    return json.hashCode;
  }

  @override
  String toString() {
    return 'EventRequestEvent.unknown($json)';
  }
}

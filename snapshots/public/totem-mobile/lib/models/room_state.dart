// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'room_state_status_detail.dart';final class RoomStatus {const RoomStatus._(this.value);

factory RoomStatus.fromJson(String json) { return switch (json) {
  'waiting_room' => waitingRoom,
  'active' => active,
  'ended' => ended,
  _ => RoomStatus._(json),
}; }

static const RoomStatus waitingRoom = RoomStatus._('waiting_room');

static const RoomStatus active = RoomStatus._('active');

static const RoomStatus ended = RoomStatus._('ended');

static const List<RoomStatus> values = [waitingRoom, active, ended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RoomStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RoomStatus($value)'; } 
 }
final class TurnState {const TurnState._(this.value);

factory TurnState.fromJson(String json) { return switch (json) {
  'idle' => idle,
  'speaking' => speaking,
  'passing' => passing,
  _ => TurnState._(json),
}; }

static const TurnState idle = TurnState._('idle');

static const TurnState speaking = TurnState._('speaking');

static const TurnState passing = TurnState._('passing');

static const List<TurnState> values = [idle, speaking, passing];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TurnState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TurnState($value)'; } 
 }
/// The canonical state snapshot. This is what gets:
/// - returned from both endpoints
/// - published to LiveKit room metadata
/// - built from the Room model
/// 
/// Clients should treat this as the single type they deserialize everywhere.
/// User references are slugs (short unique public IDs), not internal IDs.
final class RoomState {const RoomState({required this.sessionSlug, required this.version, required this.status, required this.turnState, required this.statusDetail, this.currentSpeaker, this.nextSpeaker, required this.talkingOrder, required this.keeper, this.bannedParticipants = const [], });

factory RoomState.fromJson(Map<String, dynamic> json) { return RoomState(
  sessionSlug: json['session_slug'] as String,
  version: (json['version'] as num).toInt(),
  status: RoomStatus.fromJson(json['status'] as String),
  turnState: TurnState.fromJson(json['turn_state'] as String),
  statusDetail: RoomStateStatusDetail.fromJson(json['status_detail'] as Map<String, dynamic>),
  currentSpeaker: json['current_speaker'] as String?,
  nextSpeaker: json['next_speaker'] as String?,
  talkingOrder: (json['talking_order'] as List<dynamic>).map((e) => e as String).toList(),
  keeper: json['keeper'] as String,
  bannedParticipants: json.containsKey('banned_participants') ? (json['banned_participants'] as List<dynamic>).map((e) => e as String).toList() : const [],
); }

final String sessionSlug;

final int version;

final RoomStatus status;

final TurnState turnState;

final RoomStateStatusDetail statusDetail;

final String? currentSpeaker;

final String? nextSpeaker;

final List<String> talkingOrder;

final String keeper;

final List<String> bannedParticipants;

Map<String, dynamic> toJson() { return {
  'session_slug': sessionSlug,
  'version': version,
  'status': status.toJson(),
  'turn_state': turnState.toJson(),
  'status_detail': statusDetail.toJson(),
  'current_speaker': ?currentSpeaker,
  'next_speaker': ?nextSpeaker,
  'talking_order': talkingOrder,
  'keeper': keeper,
  'banned_participants': bannedParticipants,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('session_slug') && json['session_slug'] is String &&
      json.containsKey('version') && json['version'] is num &&
      json.containsKey('status') &&
      json.containsKey('turn_state') &&
      json.containsKey('status_detail') &&
      json.containsKey('talking_order') &&
      json.containsKey('keeper') && json['keeper'] is String; } 
RoomState copyWith({String? sessionSlug, int? version, RoomStatus? status, TurnState? turnState, RoomStateStatusDetail? statusDetail, String? Function()? currentSpeaker, String? Function()? nextSpeaker, List<String>? talkingOrder, String? keeper, List<String> Function()? bannedParticipants, }) { return RoomState(
  sessionSlug: sessionSlug ?? this.sessionSlug,
  version: version ?? this.version,
  status: status ?? this.status,
  turnState: turnState ?? this.turnState,
  statusDetail: statusDetail ?? this.statusDetail,
  currentSpeaker: currentSpeaker != null ? currentSpeaker() : this.currentSpeaker,
  nextSpeaker: nextSpeaker != null ? nextSpeaker() : this.nextSpeaker,
  talkingOrder: talkingOrder ?? this.talkingOrder,
  keeper: keeper ?? this.keeper,
  bannedParticipants: bannedParticipants != null ? bannedParticipants() : this.bannedParticipants,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RoomState &&
          sessionSlug == other.sessionSlug &&
          version == other.version &&
          status == other.status &&
          turnState == other.turnState &&
          statusDetail == other.statusDetail &&
          currentSpeaker == other.currentSpeaker &&
          nextSpeaker == other.nextSpeaker &&
          listEquals(talkingOrder, other.talkingOrder) &&
          keeper == other.keeper &&
          listEquals(bannedParticipants, other.bannedParticipants); } 
@override int get hashCode { return Object.hash(sessionSlug, version, status, turnState, statusDetail, currentSpeaker, nextSpeaker, Object.hashAll(talkingOrder), keeper, Object.hashAll(bannedParticipants)); } 
@override String toString() { return 'RoomState(sessionSlug: $sessionSlug, version: $version, status: $status, turnState: $turnState, statusDetail: $statusDetail, currentSpeaker: $currentSpeaker, nextSpeaker: $nextSpeaker, talkingOrder: $talkingOrder, keeper: $keeper, bannedParticipants: $bannedParticipants)'; } 
 }

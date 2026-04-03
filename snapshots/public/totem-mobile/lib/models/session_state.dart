// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class SessionStatus {
  const SessionStatus._(this.value);

  factory SessionStatus.fromJson(String json) {
    return switch (json) {
      'waiting' => waiting,
      'started' => started,
      'ended' => ended,
      _ => SessionStatus._(json),
    };
  }

  static const SessionStatus waiting = SessionStatus._('waiting');

  static const SessionStatus started = SessionStatus._('started');

  static const SessionStatus ended = SessionStatus._('ended');

  static const List<SessionStatus> values = [waiting, started, ended];

  final String value;

  String toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SessionStatus && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'SessionStatus($value)';
  }
}

@immutable
final class TotemStatus {
  const TotemStatus._(this.value);

  factory TotemStatus.fromJson(String json) {
    return switch (json) {
      'none' => none,
      'accepted' => accepted,
      'passing' => passing,
      _ => TotemStatus._(json),
    };
  }

  static const TotemStatus none = TotemStatus._('none');

  static const TotemStatus accepted = TotemStatus._('accepted');

  static const TotemStatus passing = TotemStatus._('passing');

  static const List<TotemStatus> values = [none, accepted, passing];

  final String value;

  String toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is TotemStatus && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'TotemStatus($value)';
  }
}

@immutable
final class SessionState {
  const SessionState({
    required this.keeperSlug,
    required this.speakingOrder,
    this.status = SessionStatus.waiting,
    this.speakingNow,
    this.nextSpeaker,
    this.totemStatus = TotemStatus.none,
  });

  factory SessionState.fromJson(Map<String, dynamic> json) {
    return SessionState(
      keeperSlug: json['keeper_slug'] as String,
      status: json.containsKey('status')
          ? SessionStatus.fromJson(json['status'] as String)
          : SessionStatus.waiting,
      speakingOrder: (json['speaking_order'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      speakingNow: json['speaking_now'] as String?,
      nextSpeaker: json['next_speaker'] as String?,
      totemStatus: json.containsKey('totem_status')
          ? TotemStatus.fromJson(json['totem_status'] as String)
          : TotemStatus.none,
    );
  }

  final String keeperSlug;

  final SessionStatus status;

  final List<String> speakingOrder;

  final String? speakingNow;

  final String? nextSpeaker;

  final TotemStatus totemStatus;

  Map<String, dynamic> toJson() {
    return {
      'keeper_slug': keeperSlug,
      'status': status.toJson(),
      'speaking_order': speakingOrder,
      'speaking_now': ?speakingNow,
      'next_speaker': ?nextSpeaker,
      'totem_status': totemStatus.toJson(),
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('keeper_slug') &&
        json['keeper_slug'] is String &&
        json.containsKey('speaking_order');
  }

  SessionState copyWith({
    String? keeperSlug,
    SessionStatus Function()? status,
    List<String>? speakingOrder,
    String? Function()? speakingNow,
    String? Function()? nextSpeaker,
    TotemStatus Function()? totemStatus,
  }) {
    return SessionState(
      keeperSlug: keeperSlug ?? this.keeperSlug,
      status: status != null ? status() : this.status,
      speakingOrder: speakingOrder ?? this.speakingOrder,
      speakingNow: speakingNow != null ? speakingNow() : this.speakingNow,
      nextSpeaker: nextSpeaker != null ? nextSpeaker() : this.nextSpeaker,
      totemStatus: totemStatus != null ? totemStatus() : this.totemStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is SessionState &&
            keeperSlug == other.keeperSlug &&
            status == other.status &&
            listEquals(speakingOrder, other.speakingOrder) &&
            speakingNow == other.speakingNow &&
            nextSpeaker == other.nextSpeaker &&
            totemStatus == other.totemStatus;
  }

  @override
  int get hashCode {
    return Object.hash(
      keeperSlug,
      status,
      Object.hashAll(speakingOrder),
      speakingNow,
      nextSpeaker,
      totemStatus,
    );
  }

  @override
  String toString() {
    return 'SessionState(keeperSlug: $keeperSlug, status: $status, speakingOrder: $speakingOrder, speakingNow: $speakingNow, nextSpeaker: $nextSpeaker, totemStatus: $totemStatus)';
  }
}

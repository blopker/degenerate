// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'remove_reason.dart';

@immutable
final class RemoveParticipantPayload {
  const RemoveParticipantPayload({
    required this.identity,
    required this.reason,
    this.action = 'remove_participant',
  });

  factory RemoveParticipantPayload.fromJson(Map<String, dynamic> json) {
    return RemoveParticipantPayload(
      action: json.containsKey('action')
          ? json['action'] as String
          : 'remove_participant',
      identity: json['identity'] as String,
      reason: RemoveReason.fromJson(json['reason'] as String),
    );
  }

  final String action;

  final String identity;

  final RemoveReason reason;

  Map<String, dynamic> toJson() {
    return {'action': action, 'identity': identity, 'reason': reason.toJson()};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('identity') &&
        json['identity'] is String &&
        json.containsKey('reason');
  }

  RemoveParticipantPayload copyWith({
    String Function()? action,
    String? identity,
    RemoveReason? reason,
  }) {
    return RemoveParticipantPayload(
      action: action != null ? action() : this.action,
      identity: identity ?? this.identity,
      reason: reason ?? this.reason,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is RemoveParticipantPayload &&
            action == other.action &&
            identity == other.identity &&
            reason == other.reason;
  }

  @override
  int get hashCode {
    return Object.hash(action, identity, reason);
  }

  @override
  String toString() {
    return 'RemoveParticipantPayload(action: $action, identity: $identity, reason: $reason)';
  }
}

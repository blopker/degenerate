// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

import 'end_reason.dart';

@immutable
final class EndRoomEvent {
  const EndRoomEvent({required this.reason, this.type});

  factory EndRoomEvent.fromJson(Map<String, dynamic> json) {
    return EndRoomEvent(
      type: json['type'] as String?,
      reason: EndReason.fromJson(json['reason'] as String),
    );
  }

  final String? type;

  final EndReason reason;

  /// The value with the schema default applied when absent.
  String get typeOrDefault {
    return type ?? 'end_room';
  }

  Map<String, dynamic> toJson() {
    return {'type': ?type, 'reason': reason.toJson()};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('reason');
  }

  EndRoomEvent copyWith({String? Function()? type, EndReason? reason}) {
    return EndRoomEvent(
      type: type != null ? type() : this.type,
      reason: reason ?? this.reason,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is EndRoomEvent && type == other.type && reason == other.reason;
  }

  @override
  int get hashCode {
    return Object.hash(type, reason);
  }

  @override
  String toString() {
    return 'EndRoomEvent(type: $type, reason: $reason)';
  }
}
